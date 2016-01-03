package com.siping.rmi.controller.home;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.siping.rmi.beans.user.User;

@Controller
public class HomeController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "/home/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(User user) {
		try {
			SecurityUtils.getSubject().login(new UsernamePasswordToken(user.getUsername(), user.getPassword()));
			return "redirect:/user/getlist";
		} catch (AuthenticationException e) {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(RedirectAttributes redirectAttributes) {
		SecurityUtils.getSubject().logout();
		redirectAttributes.addFlashAttribute("message", "退出");
		return "redirect:/login";
	}

	@RequestMapping("/403")
	public String unauthorizedRole() {
		return "/403";
	}
}
