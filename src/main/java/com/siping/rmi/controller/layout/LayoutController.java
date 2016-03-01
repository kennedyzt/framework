package com.siping.rmi.controller.layout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LayoutController {
    @RequestMapping("/main")
    public String toMain() {
        return "/layout/main";
    }

    @RequestMapping("/header")
    public String toHeader() {
        return "/layout/header";
    }

    @RequestMapping("/content")
    public String toContent() {
        return "/layout/content";
    }

    @RequestMapping("/menu")
    public String toMenu() {
        return "/layout/menu";
    }

    @RequestMapping("/footer")
    public String toFooter() {
        return "/layout/footer";
    }
}
