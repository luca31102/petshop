package com.devpro.JVW25_NguyenHaiNam_Day02.dto;

import java.util.Date;

public class CartSearch {
	private String keyword;
	private int status;
	private String beginDate;
	private String endDate;
	private int totalItems;
	private int currentPage;
	private int sizeOfPage;

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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getTotalItems() {
		return totalItems;
	}

	public void setTotalItems(int totalItems) {
		this.totalItems = totalItems;
	}

}
