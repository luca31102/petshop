package com.devpro.JVW25_NguyenHaiNam_Day02.model;

import java.math.BigInteger;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_sale_order_product")
public class SaleOrderProduct extends BaseModel {

	@Column(name = "description", length = 300, nullable = true)
	private String description;

	@Column(name = "quatity", nullable = true)
	private BigInteger quatity;

	// Mapping many-to-one: saleorderproduct-to-saleorder
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "sale_order_id")
	private SaleOrder saleOrder;

	// Mapping many-to-one: saleorderproduct-to-product
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Product product;

	public SaleOrderProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SaleOrderProduct(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate,
			Boolean status, String description, BigInteger quatity, SaleOrder saleOrder, Product product) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.description = description;
		this.quatity = quatity;
		this.saleOrder = saleOrder;
		this.product = product;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigInteger getQuatity() {
		return quatity;
	}

	public void setQuatity(BigInteger quatity) {
		this.quatity = quatity;
	}

	public SaleOrder getSaleOrder() {
		return saleOrder;
	}

	public void setSaleOrder(SaleOrder saleOrder) {
		this.saleOrder = saleOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}	
}
