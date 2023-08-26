package com.devpro.JVW25_NguyenHaiNam_Day02.dto;

public class ProductSearch {
	private String keyword;
	private int categoryId;
	private int currentPage;
	private int sizeOfPage;
	private int totalItems;

	public int getTotalItems() {
		return totalItems;
	}

	public void setTotalItems(int totalItems) {
		this.totalItems = totalItems;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getSizeOfPage() {
		return sizeOfPage;
	}

	public void setSizeOfPage(int sizeOfPage) {
		this.sizeOfPage = sizeOfPage;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

}
