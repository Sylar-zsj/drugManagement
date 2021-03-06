package com.manage.user.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.manage.user.dao.IUserDAO;
import com.manage.user.model.User;
@Component("userDAO")
public class UserDAOImpl implements IUserDAO{

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	@Override
	public User findByNameAndPsw(User user) {
		//此处的表名应该是映射的java类名   而不是数据库表名
		String hql = "from User where u_name=? and u_password=?";
		List<?> list = (List<?>)this.hibernateTemplate.find(hql, user.getU_name(),user.getU_password());
		if(list != null && list.size()>0){
			return (User)list.get(0);
		}
		return null;
	}


	@Override
	public boolean addAdmin(User user) {
		boolean flag=false;
		Serializable  tag= this.hibernateTemplate.save(user);
		if(""!=tag && null!=tag){   //tag为空  就失败  不为空就成功   tag返回的是新增后的id号
			flag=true;
		}
		return flag;
	}


	@Override
	public User findByName(String name) {
		String hql = "from User where u_name=? ";
		List<?> list = (List<?>)this.hibernateTemplate.find(hql, name);
		if(list != null && list.size()>0){
			return (User)list.get(0);
		}
		return null;
	}

}
