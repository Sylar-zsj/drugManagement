package com.manage.user.service;

import com.manage.user.model.User;

public interface IUserService {
	public User findByNameAndPsw(User user);
	//根据用户名查找
	public User findByName(String name);
	//新增
	public boolean addAdmin(User user);

}
