package com.manage.user.service;

import com.manage.user.model.User;

public interface IUserService {
	public User find(User user);
	
	//新增
	public boolean addAdmin(User user);

}
