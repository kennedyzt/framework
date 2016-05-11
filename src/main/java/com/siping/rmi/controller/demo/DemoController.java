package com.siping.rmi.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/demo")
public class DemoController {
    @RequestMapping("/bootstrapvalidator")
    public String toBootstrapValidator() {
        return "/demo/bootstrapValidator";
    }
}
