package com.devpro.JVW25_NguyenHaiNam_Day02.controller.admin;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.CartSearch;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.Constants;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.SaleOrder;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.SaleOrderService;


@Controller
public class CartAdminController extends BaseController implements Constants {

	@Autowired
	private SaleOrderService saleOrderService;

	@RequestMapping(value = "/list-cart", method = RequestMethod.GET)
	public String listProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String keyword = request.getParameter("keyword");
		int status = 2;
		if (!StringUtils.isEmpty(request.getParameter("status"))) {
			status = Integer.parseInt(request.getParameter("status"));
		}
		
		String beginDate = null;
		String endDate = null;
		
		if (!StringUtils.isEmpty(request.getParameter("beginDate")) &&
				!StringUtils.isEmpty(request.getParameter("endDate"))) {		
			beginDate = request.getParameter("beginDate");
			endDate = request.getParameter("endDate");
		}
		CartSearch cartSearch = new CartSearch();
		cartSearch.setStatus(status);
		cartSearch.setKeyword(keyword);
		cartSearch.setBeginDate(beginDate);
		cartSearch.setEndDate(endDate);
		//Phan trang
		cartSearch.setSizeOfPage(SIZE_OF_PAGE);
//		saleOrderSearch.setTotalItems(saleOrderService.findAll().size());
		cartSearch.setTotalItems(saleOrderService.findAll().size());
		int currentPage = 1;
		if (!StringUtils.isEmpty(request.getParameter("page"))) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		cartSearch.setCurrentPage(currentPage);
		//Het phan trang
		
		List<SaleOrder> saleOrders = saleOrderService.search(cartSearch);
		model.addAttribute("saleOrders", saleOrders);
		model.addAttribute("cartSearch", cartSearch);
		return "admin/list-cart";
	}	
}
