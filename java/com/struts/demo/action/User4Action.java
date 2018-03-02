package com.struts.demo.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.struts.demo.model.User;

public class User4Action extends ActionSupport implements ModelDriven<User>{

	private User user = new User();
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	public String add() {
		System.out.println("ModelDriven传递参数");
		System.out.println(user.getName());
		System.out.println(user.getAge());
		return SUCCESS;
	}
	
	public String getObj() {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		application = session.getServletContext();
		return SUCCESS;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
