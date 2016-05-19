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

    @RequestMapping("/layer")
    public String toLayer() {
        return "/demo/layer";
    }

    @RequestMapping("/angularjs/helloworld")
    public String toHelloWorld() {
        return "/demo/angularjs/helloWorld";
    }

    @RequestMapping("/fileinput")
    public String toFileInput() {
        return "/demo/fileInput";
    }
}
