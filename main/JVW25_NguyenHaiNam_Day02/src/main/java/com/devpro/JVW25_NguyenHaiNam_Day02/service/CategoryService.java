package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.Category;

@Service
public class CategoryService extends BaseService<Category> {

	@Override
	public Class<Category> clazz() {
		// TODO Auto-generated method stub
		return Category.class;
	}

}
