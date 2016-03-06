package com.siping.rmi.service.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siping.rmi.beans.menu.Menu;
import com.siping.rmi.mapper.menu.MenuMapper;
import com.siping.rmi.service.menu.IMenuService;

@Service
public class MenuServiceImpl implements IMenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> getList() throws Exception {
        return menuMapper.getList();
    }

}
