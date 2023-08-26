package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.User;

@Service
public class UserDetailsServiceImpl extends BaseService<User> implements UserDetailsService {
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// Conect to DB lay user theo user name
		String sql = "SELECT * FROM tbl_user u WHERE u.username = '" + username + "' AND u.status = 1";

		User user = this.getEntityByNativeSql(sql);

		try {
			return user;
		} catch (UsernameNotFoundException e) {
			e.printStackTrace();
		}
		return new User(); // UserDetails không được null.
	}

	@Override
	public Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}
}
