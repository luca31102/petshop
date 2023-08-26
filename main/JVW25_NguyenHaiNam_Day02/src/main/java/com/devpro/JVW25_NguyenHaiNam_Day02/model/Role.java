package com.devpro.JVW25_NguyenHaiNam_Day02.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;

@Entity
@Table(name = "tbl_role")
public class Role extends BaseModel implements GrantedAuthority {

	@Column(name = "name", length = 200, nullable = false)
	private String name;

	@Column(name = "description", length = 200, nullable = true)
	private String description;

	// Handling many-to-many relationship: Mapping many-to-many fiels
	// First side: owner (user has some roles)
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_user_role", joinColumns = @JoinColumn(name = "role_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> users = new ArrayList<User>();

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

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.name;
	}

}
