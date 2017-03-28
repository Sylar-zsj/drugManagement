package com.manage.user.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.manage.user.model.User;
import com.manage.user.service.IUserService;
import com.manage.utils.fileUpload;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Component("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven{
	@Resource
	private IUserService iUserService;
	
	private  User user =new User();
	private  String checkcode;
	//文件
	private File file;
	private String fileFileName; //文件名称
    private String fileFileContentType; //文件类型
    
    private fileUpload fload = new fileUpload();
	


	public String login(){
		String code = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		String errorMessage="";
		if(!checkcode.equalsIgnoreCase(code)){
			errorMessage="验证码不正确！";
			//将errorMessageput到xml中的对应字段中  
			ServletActionContext.getContext().put("errorMessage", errorMessage);
			return "loginError";
		}
		User existUser = iUserService.findByNameAndPsw(user);
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
	
	//检验新增的用户名是否已存在
	public String checkUsername(){
		String errorMessage="";
		User existUser = iUserService.findByName(user.getU_name());
		if(existUser != null){
			errorMessage="用户名已存在,请更换!";
			ServletActionContext.getContext().put("errorMessage", errorMessage);
		}
		return "loginError";
	}
	
	//新增管理员
	public String addAdmin(){
		String errorMessage="";
		//获取目的文件夹
		String Dir=ServletActionContext.getServletContext().getRealPath("/AdminImages");
		//准备输出
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String dateString=sdf.format(new Date());
		//图片上传
		boolean flag=fload.upload(Dir, dateString, file, fileFileName, fileFileContentType);
		if(flag){
			//往数据库新增
			user.setU_pic("AdminImages\\"+dateString+fileFileName);
			boolean flag2=iUserService.addAdmin(user);
			if(flag2){
				errorMessage = "新增成功";
			}else{
				errorMessage="新增失败";
			}
			ServletActionContext.getContext().put("errorMessage", errorMessage);
			return "loginError";
		}else{
			errorMessage="文件上传失败！";
			ServletActionContext.getContext().put("errorMessage", errorMessage);
			return "loginError";
		}
	}
	
	
	@Override
	public Object getModel() {
		return user;
	}


	public IUserService getiUserService() {
		return iUserService;
	}

	public void setiUserService(IUserService iUserService) {
		this.iUserService = iUserService;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileFileContentType() {
		return fileFileContentType;
	}

	public void setFileFileContentType(String fileFileContentType) {
		this.fileFileContentType = fileFileContentType;
	}
	
}
