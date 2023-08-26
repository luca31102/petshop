package com.devpro.JVW25_NguyenHaiNam_Day02.controller.user;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JVW25_NguyenHaiNam_Day02.controller.BaseController;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.Cart;
import com.devpro.JVW25_NguyenHaiNam_Day02.dto.CartProduct;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.SaleOrder;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.SaleOrderProduct;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.ProductService;
import com.devpro.JVW25_NguyenHaiNam_Day02.service.SaleOrderService;

@Controller
public class CartController extends BaseController {
	@Autowired
	ProductService productService;

	@Autowired
	SaleOrderService saleOrderService;

	@RequestMapping(value = "/cart-view", method = RequestMethod.GET)
	public String cartView(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		HttpSession session = request.getSession();
		BigDecimal totalCartPrice = BigDecimal.ZERO;
		Cart cart = null;
		String errormessage = null;
		String message = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
			totalCartPrice = cart.totalCartPrice();
			model.addAttribute("totalCartPrice", totalCartPrice);
			model.addAttribute("cartProducts", cart.getCartProducts());
			message = "Co tong so " + cart.totalCartProducts() + " san pham trong gio hang";
		} else {
			errormessage = "Khong co san pham nao trong gio hang";
		}
		model.addAttribute("message", message);
		model.addAttribute("errormessage", errormessage);
		return "user/cart-view";
	}

	@RequestMapping(value = "/cart-place-order", method = RequestMethod.POST)
	public String cartPlaceOrder(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		if(!isLogined()) {
			return "redirect:/login";
		}
		
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		String txtName = request.getParameter("txtName");
		String txtMobile = request.getParameter("txtMobile");
		String txtEmail = request.getParameter("txtEmail");
		String txtAddress = request.getParameter("txtAddress");

		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCustomer_name(txtName);
		saleOrder.setCustomer_address(txtAddress);
		saleOrder.setCustomer_email(txtEmail);
		saleOrder.setCustomer_mobile(txtMobile);
		User user = new User();
		Random rand = new Random();
		int ranNum = rand.nextInt(100) + 1;
		user.setId(getUserLogined().getId());
		saleOrder.setUser(user);
		saleOrder.setCode(String.valueOf(ranNum));
		saleOrder.setTotal(cart.totalCartPrice());

		// lay gio hang

		for (CartProduct cartProduct : cart.getCartProducts()) {
			SaleOrderProduct saleOrderProducts = new SaleOrderProduct();
			saleOrderProducts.setProduct(productService.getById(cartProduct.getProductId()));
			saleOrderProducts.setQuatity(cartProduct.getQuantity());
			saleOrder.addRelationalSaleOrderProduct(saleOrderProducts);
		}
		saleOrderService.saveOrUpdate(saleOrder);
	
		cart = new Cart();
		session.setAttribute("cart", null);
		session.setAttribute("totalCartProducts", null);
		return "redirect:/index";
	}

	@RequestMapping(value = "/add-to-cart", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartProduct addProduct) throws IOException {
		// lay gio hang
		HttpSession session = request.getSession();
		Cart cart = null;
		// Kiem tra xem da co gio hang chua
		if (session.getAttribute("cart") != null) {// Da co gio hang
			// Lay gio hang
			cart = (Cart) session.getAttribute("cart");
		} else { // chua co gio hang
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		// Lay hang va dua vao gio hang: Co 2 truong hop
		// Lay product trong db
		Product dbProduct = productService.getById(addProduct.getProductId());

		boolean isExistProduct = false; // Kiem tra hang chon da co trong gio hay chua
		for (CartProduct cartProduct : cart.getCartProducts()) {
			if (cartProduct.getProductId() == addProduct.getProductId()) {// Hang da co trong gio
				isExistProduct = true;
				// Tang so luong
				cartProduct.setQuantity(cartProduct.getQuantity().add(addProduct.getQuantity()));
			}
		}
		if (!isExistProduct) {
			// Them moi
			addProduct.setName(dbProduct.getName());
			addProduct.setPrice(dbProduct.getPrice());
			addProduct.setAvatar(dbProduct.getAvatar());
			cart.getCartProducts().add(addProduct);
		}
		// Thiet lap lai gio han trong session
		session.setAttribute("cart", cart);
		session.setAttribute("totalCartProducts", cart.totalCartProducts());
		// Tra ve tong san pham trong gio hang
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "Success");
		jsonResult.put("totalCartProducts", cart.totalCartProducts());

		return ResponseEntity.ok(jsonResult);

	}

}
