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
@Table(name = "tbl_product")
public class Product extends BaseModel {

	@Column(name = "name", length = 1000, nullable = false)
	private String name;

	@Column(name = "price", nullable = true)
	private BigDecimal price;

	@Column(name = "sale_price", nullable = true)
	private BigDecimal salePrice;

	@Column(name = "short_description", length = 3000, nullable = true)
	private String shortDescription;

	@Column(name = "detail_description", nullable = true)
	private String detailDescription;

	@Column(name = "avatar", length = 255, nullable = true)
	private String avatar;

	@Column(name = "is_hot", nullable = true)
	private Boolean isHot = Boolean.FALSE;

	// Mapping many-to-one: product-to-category
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Category category;

	// Mapping one-to-many: product-to-saleorderproduct
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private Set<SaleOrderProduct> saleOrderProducts = new HashSet<SaleOrderProduct>();

	// Phuong thuc them va xoa phan tu trong danh sach quan he
	// product-saleorderproduct
	public void addRelationalSaleOrderProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.add(saleOrderProduct);
		saleOrderProduct.setProduct(this);
	}

	public void deleteRelationalSaleOrderProduct(SaleOrderProduct saleOrderProduct) {
		saleOrderProducts.remove(saleOrderProduct);
		saleOrderProduct.setProduct(null);
	}

	// Mapping one-to-many: product-to-productimage
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private Set<ProductImage> productImages = new HashSet<ProductImage>();

	// Phuong thuc them va xoa phan tu trong danh sach quan he
	// product-saleorderproduct
	public void addRelationalProductImage(ProductImage productImage) {
		productImages.add(productImage);
		productImage.setProduct(this);
	}

	public void deleteRelationalProductImage(ProductImage productImage) {
		saleOrderProducts.remove(productImage);
		productImage.setProduct(null);
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String name, BigDecimal price, BigDecimal salePrice, String shortDescription, String detailDescription,
			String avatar, Boolean isHot, Category category, Set<SaleOrderProduct> saleOrderProducts,
			Set<ProductImage> productImages) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.name = name;
		this.price = price;
		this.salePrice = salePrice;
		this.shortDescription = shortDescription;
		this.detailDescription = detailDescription;
		this.avatar = avatar;
		this.isHot = isHot;
		this.category = category;
		this.saleOrderProducts = saleOrderProducts;
		this.productImages = productImages;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDetailDescription() {
		return detailDescription;
	}

	public void setDetailDescription(String detailDescription) {
		this.detailDescription = detailDescription;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<SaleOrderProduct> getSaleOrderProducts() {
		return saleOrderProducts;
	}

	public void setSaleOrderProducts(Set<SaleOrderProduct> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}

	public Set<ProductImage> getProductImages() {
		return productImages;
	}

	public void setProductImages(Set<ProductImage> productImages) {
		this.productImages = productImages;
	}

}
