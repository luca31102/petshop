package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;

@Service
public class UserService extends BaseService<User> {

	@Override
	public Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}

}
