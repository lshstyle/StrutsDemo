package com.struts.demo.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.demo.model.User;

public class User3Action extends ActionSupport implements RequestAware, SessionAware, ApplicationAware{

	private User user;
	private Map<String, Object> request;
	private Map<String, Object> session;
	private Map<String, Object> application;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String add() {
		System.out.println("域模型传递参数");
		System.out.println(user.getName());
		System.out.println(user.getAge());
		return SUCCESS;
	}

	@Override
	public void setApplication(Map<String, Object> request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setRequest(Map<String, Object> application) {
		// TODO Auto-generated method stub
		
	}
}
