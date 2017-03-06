package com.manage.user.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User implements Serializable{

	private int u_id;
	private String u_name;
	private String u_password;
	private String u_pic;
	
	
	//必须要这个主键注解   否则报错
	@Id
	@GeneratedValue
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_pic() {
		return u_pic;
	}
	public void setU_pic(String u_pic) {
		this.u_pic = u_pic;
	}
	
	
}
