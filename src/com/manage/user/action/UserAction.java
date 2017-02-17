package com.manage.user.action;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.manage.user.model.User;
import com.manage.user.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Component("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven{
	@Resource
	private IUserService iUserService;
	
	public IUserService getiUserService() {
		return iUserService;
	}

	
	public void setiUserService(IUserService iUserService) {
		this.iUserService = iUserService;
	}

	private  User user =new User();
	private  String checkcode;
	

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}


	public String login(){
		String code = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		String errorMessage=" ";
		if(!checkcode.equalsIgnoreCase(code)){
			errorMessage="验证码不正确!";
			return "errorMessage";
		}
		User existUser = iUserService.find(user);
		if(existUser == null){
			this.addFieldError("validError","用户名或密码错误!");
			return "loginError";
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
		}
		return "loginSuccess";
	}
	
	@Override
	public Object getModel() {
		return user;
	}

}
