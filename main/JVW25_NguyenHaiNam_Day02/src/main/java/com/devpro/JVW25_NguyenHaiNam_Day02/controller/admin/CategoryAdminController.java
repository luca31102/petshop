package com.devpro.JVW25_NguyenHaiNam_Day02.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Category;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.CategoryService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.UserService;

@Controller
public class CategoryAdminController extends BaseController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/list-category", method = RequestMethod.GET)
	public String listCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		return "admin/list-category";
	}
	
	@RequestMapping(value = "/add-category", method = RequestMethod.GET)
	public String addCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response
			)throws IOException{
		model.addAttribute("category", new Category());
		List<User> users = userService.findAll();
		model.addAttribute("users", users);
		Date currentDate = new Date();
		Category category = new Category();
		category.setCreateDate(currentDate);
		category.setUpdateDate(currentDate);
		model.addAttribute("category", category);
		return "admin/add-category";
	}
	
	@RequestMapping(value = "/save-add-category", method = RequestMethod.POST)
	public String saveAddProduct(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("category") Category category) throws IOException {
		categoryService.saveOrUpdate(category);
		return "redirect:/add-category";
	}
}
