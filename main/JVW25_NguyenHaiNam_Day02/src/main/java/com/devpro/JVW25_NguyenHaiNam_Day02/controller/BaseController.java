package com.devpro.JVW25_NguyenHaiNam_Day02.controller;

import java.math.BigInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;

public class BaseController {
	@ModelAttribute("totalCartProducts")
	public BigInteger getTotalCartProducts(final HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("totalCartProducts") != null) {
			return (BigInteger)session.getAttribute("totalCartProducts");
		}
		return BigInteger.ZERO;
	}
	
	// Lay thong tin cua user dang nhap
		@ModelAttribute("userLogined")
		public User getUserLogined() {
			Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

			if (userLogined != null && userLogined instanceof UserDetails) {

				User user = (User) userLogined;
//				System.out.println("user email: " + user.getUsername());
//				System.out.println("user email: " + user.getEmail());
				return user;
			}
			return new User();
		}
		
		// Lay thong tin cua user dang nhap
				@ModelAttribute("isLogined")
				public boolean isLogined() {
					Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

					if (userLogined != null && userLogined instanceof UserDetails) {
						return true;
					}
					return false;
				}
}
