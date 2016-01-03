package com.siping.rmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rmi")
public class HelloRMIController {

	@RequestMapping("/hello")
	public String sayHello() {
		return "/rmi";
	}

}
