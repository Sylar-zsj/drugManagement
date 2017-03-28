package com.manage.user.dao;

import com.manage.user.model.User;

public interface IUserDAO {
	//根据用户名和name查找
	public User findByNameAndPsw(User user);
	//根据用户名查找
	public User findByName(String name);
	//新增
	public boolean addAdmin(User user);
	
}
