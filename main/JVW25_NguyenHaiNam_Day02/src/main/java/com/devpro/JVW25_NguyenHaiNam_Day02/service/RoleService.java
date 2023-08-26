package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.Role;

@Service
public class RoleService extends BaseService<Role> {

	@Override
	public Class<Role> clazz() {
		// TODO Auto-generated method stub
		return Role.class;
	}
	
	public Role getRoleByName(String name) {
		String sql = "SELECT * FROM tbl_role WHERE name = '" + name + "'";
		return this.getEntityByNativeSql(sql);
	}
}
