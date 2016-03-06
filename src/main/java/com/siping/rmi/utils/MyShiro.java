package com.siping.rmi.utils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.siping.rmi.beans.user.Role;
import com.siping.rmi.beans.user.User;
import com.siping.rmi.service.user.IUserService;

public class MyShiro extends AuthorizingRealm {
	@Autowired
	private IUserService userService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		String loginName = (String) principalCollection.fromRealm(getName()).iterator().next();
		User user = null;
		try {
			user = userService.findByName(loginName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			List<Role> roles = null;
			try {
				roles = userService.findRolesByUserId(user.getId());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			Set<String> roleNameSet = new HashSet<String>();
			List<Integer> roleIds = new ArrayList<Integer>();
			for (Role role : roles) {
				roleNameSet.add(role.getRolename());
				roleIds.add(role.getId());
			}
			info.setRoles(roleNameSet);
			List<String> permissions=new ArrayList<String>();
			try {
				permissions = userService.findPermissionByRoleId(roleIds);
			} catch (Exception e) {
				e.printStackTrace();
			}
			info.addStringPermissions(permissions);
			return info;
		}
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken)
			throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
		User user = null;
		try {
			user = userService.findByName(token.getUsername());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			return new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), getName());
		}
		return null;
	}

}
