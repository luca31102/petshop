package com.devpro.JVW25_NguyenHaiNam_Day02.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_sale_order")
public class SaleOrder extends BaseModel {
	@Column(name = "code", length = 45, nullable = false)
	private String code;

	@Column(name = "total", nullable = false)
	private BigDecimal total;

	@Column(name = "customer_name", length = 100, nullable = false)
	private String customer_name;

	@Column(name = "customer_address", length = 200, nullable = false)
	private String customer_address;

	@Column(name = "customer_mobile", length = 100, nullable = false)
	private String customer_mobile;

	@Column(name = "customer_email", length = 100, nullable = false)
	private String customer_email;

	// Mapping many-to-one: saleorder-to-user
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user;

	// Mapping one-to-many: sale-to-saleorderproduct
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "saleOrder")
	private Set<SaleOrderProduct> saleOrderProducts = new HashSet<SaleOrderProduct>();

	// Phuong thuc them va xoa phan tu trong danh sach quan he category-product
	public void addRelationalSaleOrderProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.add(saleOrderProduct);
		saleOrderProduct.setSaleOrder(this);
	}

	public void deleteRelationalSaleOrderProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.remove(saleOrderProduct);
		saleOrderProduct.setSaleOrder(null);
	}

	public SaleOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SaleOrder(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String code, BigDecimal total, String customer_name, String customer_address, String customer_mobile,
			String customer_email, User user, Set<SaleOrderProduct> saleOrderProducts) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.code = code;
		this.total = total;
		this.customer_name = customer_name;
		this.customer_address = customer_address;
		this.customer_mobile = customer_mobile;
		this.customer_email = customer_email;
		this.user = user;
		this.saleOrderProducts = saleOrderProducts;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getCustomer_mobile() {
		return customer_mobile;
	}

	public void setCustomer_mobile(String customer_mobile) {
		this.customer_mobile = customer_mobile;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<SaleOrderProduct> getSaleOrderProducts() {
		return saleOrderProducts;
	}

	public void setSaleOrderProducts(Set<SaleOrderProduct> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}
	
	

}
