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
		String errorMessage="";
		if(!checkcode.equalsIgnoreCase(code)){
			errorMessage="验证码不正确！";
			//将errorMessageput到xml中的对应字段中  
			ServletActionContext.getContext().put("errorMessage", errorMessage);
			return "loginError";
		}
		User existUser = iUserService.find(user);
		if(existUser == null){
			errorMessage="用户名或密码不正确！";
			ServletActionContext.getContext().put("errorMessage", errorMessage);
			return "loginError";
		}else{
			errorMessage="";
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
		}
		return "loginError";
	}
	
	/**
	 * 获取管理员图片
	 * @return
	 */
	public String getPic(){
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		if(user != null){
			String userPic = user.getU_pic();
			ServletActionContext.getContext().put("errorMessage", userPic);
		}
		return "loginError";
	}
	
	public String addAdmin(){
		boolean flag=iUserService.addAdmin(user);
		String tips="";
		if(flag){
			tips = "新增成功";
		}else{
			tips="新增失败";
		}
		ServletActionContext.getContext().put("errorMessage", tips);
		return "loginError";
	}
	
	
	@Override
	public Object getModel() {
		return user;
	}

}
