package com.manage.user.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.manage.user.dao.IUserDAO;
import com.manage.user.model.User;
import com.manage.user.service.IUserService;

@Component("userService")
@Transactional
public class UserServiceImpl implements IUserService{
	@Resource
	private IUserDAO iUserDAO;
	
	public IUserDAO getiUserDAO() {
		return iUserDAO;
	}


	public void setiUserDAO(IUserDAO iUserDAO) {
		this.iUserDAO = iUserDAO;
	}



	@Override
	public User findByNameAndPsw(User user) {
		return iUserDAO.findByNameAndPsw(user);
	}


	@Override
	public boolean addAdmin(User user) {
		boolean flag=iUserDAO.addAdmin(user);
		return flag;
	}


	@Override
	public User findByName(String name) {
		return iUserDAO.findByName(name);
	}

}
