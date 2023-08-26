package com.devpro.JVW25_NguyenHaiNam_Day02.controller.user;

import java.io.IOException;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.ProductService;

@Controller
public class HomeController extends BaseController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Product> products = productService.findAllActive();
		model.addAttribute("products", products);
//		BigInteger totalCartProducts = BigInteger.ZERO;
//		HttpSession session = request.getSession();
//		if(session.getAttribute("cart") != null) {
//			Cart cart = (Cart) session.getAttribute("cart");
//			totalCartProducts = cart.totalCartProducts();	
//		}
//		model.addAttribute("totalCartProducts", totalCartProducts);

		return "user/index";
	}
}
