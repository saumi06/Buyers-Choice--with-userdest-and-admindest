package com.buyerschoice.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buyerschoice.dao.DestinationDao;

@Controller
public class LoginController {
	@Autowired
	DestinationDao cdaao;

	public LoginController() {

	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/loginSuccessful")
	public String login_session_attributes(HttpSession session, Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();

		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
				.getAuthentication().getAuthorities();
		String page = "";
		String role = "ROLE_USER";
		int size = 0;

		System.out.println("Login :" + username);

		for (GrantedAuthority authority : authorities) {
			if (authority.getAuthority().equals(role)) {

				String mylist3 = cdaao.Retrive();
				model.addAttribute("mylist3", mylist3);
				session.setAttribute("Userid", username);

				page = "userDest";

			} else {
				session.setAttribute("Administrator", "true");
				page = "diffdest";
			}
		}
		return page;

	}

	@RequestMapping("/login")
	public String showlogin() {
		System.out.println("Hiii Login");
		return "login";
	}

	@RequestMapping(value = "/perform_logout")
	public String homelogout() {
		return "login";
	}

	@RequestMapping("/userdest")
	public String show() {
		System.out.println("Hiii Show");
		return "userDest";
	}

	@RequestMapping("/Admin")
	public String Admin() {
		System.out.println("Hiii Admin");
		return "AdminHeader";
	}
}
