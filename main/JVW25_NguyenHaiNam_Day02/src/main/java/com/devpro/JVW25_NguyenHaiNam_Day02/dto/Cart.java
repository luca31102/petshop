package com.devpro.JVW25_NguyenHaiNam_Day02.dto;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class Cart {
	List<CartProduct> cartProducts = new ArrayList<CartProduct>();

	// Tong so san pham trong gio hang
	public BigInteger totalCartProducts() {
		BigInteger total = BigInteger.ZERO;
		for (CartProduct cartProduct : cartProducts) {
			total = total.add(cartProduct.getQuantity());
		}
		return total;
	}

	public BigDecimal totalCartPrice() {
		BigDecimal total = BigDecimal.ZERO;
		for (CartProduct cartProduct : cartProducts) {
			total = total.add(cartProduct.totalPrice());
		}
		return total;
	}

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(List<CartProduct> cartProducts) {
		super();
		this.cartProducts = cartProducts;
	}

	public List<CartProduct> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(List<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

}
