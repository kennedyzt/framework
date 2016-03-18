package com.siping.rmi.controller.user;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siping.rmi.beans.common.PageModel;
import com.siping.rmi.beans.user.User;
import com.siping.rmi.service.user.IUserService;
import com.siping.rmi.utils.RequestUtils;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String toList() {
        return "/user/list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd() {
        return "/user/add";
    }

    @RequestMapping(value = "/getListByPage")
    @ResponseBody
    public PageModel<User> getListByPage(HttpServletRequest request) {
        PageModel<User> pageModel = null;
        Map<String, Object> paramMap = RequestUtils.getRequestParams(request);
        try {
            pageModel = userService.getListByPage(paramMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pageModel;
    }
}
