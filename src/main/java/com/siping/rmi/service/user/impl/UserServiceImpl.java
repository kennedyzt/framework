package com.siping.rmi.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siping.rmi.beans.user.Role;
import com.siping.rmi.beans.user.User;
import com.siping.rmi.mapper.user.UserMapper;
import com.siping.rmi.service.user.IUserService;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

    public void add(User user) throws Exception {
    }

    @Override
    public User findByName(String loginName) throws Exception {
        return userMapper.findByName(loginName);
    }

    @Override
    public List<Role> findRolesByUserId(Integer userId) throws Exception {
        return userMapper.findRolesByUserId(userId);
    }

    @Override
    public List<String> findPermissionByRoleId(List<Integer> roleIds) throws Exception {
        return userMapper.findPermissionByRoleId(roleIds);
    }

    @Override
    public List<User> getListByPage(Map<String, Object> paramMap) throws Exception {
        return userMapper.getListByPage(paramMap);
    }

}
