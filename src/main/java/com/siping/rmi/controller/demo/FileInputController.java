package com.siping.rmi.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileInputController {

    @RequestMapping("/demo/fileinput")
    public String toFileInput() {
        return "/demo/fileinput";
    }

}
