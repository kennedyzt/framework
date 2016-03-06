package com.siping.rmi.controller.menu;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siping.rmi.beans.menu.Menu;
import com.siping.rmi.service.menu.IMenuService;

@Controller
@RequestMapping("/user")
public class MenuController {
    IMenuService menuService;

    @RequestMapping(value = "/getlist", method = RequestMethod.GET)
    public String loginForm() {
        return "/user/user";
    }

    @ResponseBody
    public List<Menu> getList() {
        List<Menu> response = null;
        try {
            response = menuService.getList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return response;
    }
}
