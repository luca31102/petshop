package com.devpro.JVW25_NguyenHaiNam_Day02.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_category")
public class Category extends BaseModel {
	
	@Column(name = "name", length = 200, nullable = false)
	private String name;
	
	@Column(name = "description", length = 500, nullable = true)
	private String description;
	
	//Mapping one-to-many: category-to-product
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "category")
	private Set<Product> products = new HashSet<Product>();
	
	//Phuong thuc them va xoa phan tu trong danh sach quan he category-product
	public void addRelationalProduct(Product product) {
		products.add(product);
		product.setCategory(this);	
	}
	
	public void deleteRelationalProduct(Product product) {
		products.remove(product);
		product.setCategory(null);	
	}

	public Category() {
		super();
	}

	public Category(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String name, String description, Set<Product> products) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.name = name;
		this.description = description;
		this.products = products;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
}
