package com.struts.demo.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class User2Action extends ActionSupport {
	/**
	 * 
	 */
	private String name;
	private String age;
	private Map request;
	private Map session;
	private Map application;
	private String r;
	
	public String getR() {
		return r;
	}
	public void setR(String r) {
		this.r = r;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	public String add() {
		System.out.println("对象属性传递参数");
		System.out.println(this.getAge());
		System.out.println(this.getName());
		if (!"admin".equals(name)) {
			this.addFieldError("name", "name is error");
			this.addFieldError("name", "name is wrong");
			this.addActionError("the valid is fiald");
			return ERROR;
		}
		r = "/user/add.jsp";
		return SUCCESS;
	}
	
	public String getObj() {
		//获取actionContext中的request信息
		request = (Map) ActionContext.getContext().get("request");
		session = ActionContext.getContext().getSession();
		application = ActionContext.getContext().getApplication();
		request.put("r1", "r1");
		session.put("s1", "s1");
		application.put("a1", "a1");
		return SUCCESS;
	}
}
