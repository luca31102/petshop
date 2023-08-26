package com.devpro.JVW25_NguyenHaiNam_Day02.controller.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;


@Controller
public class HomeAdminController extends BaseController {
	@RequestMapping(value = "/manager/home-admin", method = RequestMethod.GET)
	public String home(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		
		return "admin/home-admin";
	}
}
