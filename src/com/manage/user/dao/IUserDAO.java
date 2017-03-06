package com.manage.user.dao;

import com.manage.user.model.User;

public interface IUserDAO {
	public User find(User user);
	//新增
	public boolean addAdmin(User user);
	
}
