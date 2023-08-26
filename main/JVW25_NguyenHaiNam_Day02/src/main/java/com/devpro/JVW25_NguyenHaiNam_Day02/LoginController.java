package com.devpro.JVW25_NguyenHaiNam_Day02;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.Role;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.RoleService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.UserService;

@Controller
public class LoginController {
	 @Autowired
	 RoleService roleService;
	 
	 @Autowired
	 UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		
		return "form/login";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		
		return "form/signup";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(new BCryptPasswordEncoder(4).encode(request.getParameter("password")));
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		//Set role cho user moi 
		
		Role role = roleService.getRoleByName("CUSTOMER");
		user.addRole(role);
		
		userService.saveOrUpdate(user);
		return "redirect:/login";
	}
}
