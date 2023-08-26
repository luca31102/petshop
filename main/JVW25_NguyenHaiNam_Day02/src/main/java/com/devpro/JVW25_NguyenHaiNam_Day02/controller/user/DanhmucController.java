package com.devpro.JVW25_NguyenHaiNam_Day02.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DanhmucController {
	@RequestMapping(value = "/danhmuc", method = RequestMethod.GET)
	public String danhmuc(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		//Lấy dữ liệu từ database hoặc lưu dữ liệu vào DB
		//Xử lí dữ liệu lấy được từ database
		//Trả dữ liệu hiển thị lại lên màn hình
		return "user/danhmuc";
	}
}
