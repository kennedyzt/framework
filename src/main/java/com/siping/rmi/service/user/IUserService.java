package com.siping.rmi.service.user;

import java.util.List;
import java.util.Map;

import com.siping.rmi.beans.user.Role;
import com.siping.rmi.beans.user.User;

public interface IUserService {
	public void add(User user) throws Exception;

	public User findByName(String loginName) throws Exception;

	public List<Role> findRolesByUserId(Integer userId) throws Exception;

	public List<String> findPermissionByRoleId(List<Integer> roleIds) throws Exception;

    public List<User> getListByPage(Map<String, Object> paramMap) throws Exception;
}
