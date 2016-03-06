package com.siping.rmi.service.menu;

import java.util.List;

import com.siping.rmi.beans.menu.Menu;

public interface IMenuService {

    List<Menu> getList() throws Exception;

}
