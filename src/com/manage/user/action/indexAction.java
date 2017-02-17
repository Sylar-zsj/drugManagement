package com.manage.user.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component("indexAction")
@Scope("prototype")
public class indexAction extends ActionSupport{
	public String execute(){
		return "index";
	}

}
