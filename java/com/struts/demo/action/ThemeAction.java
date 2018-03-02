package com.struts.demo.action;

import com.opensymphony.xwork2.ActionSupport;

public class ThemeAction extends ActionSupport {

	public String execute() {
		this.addFieldError("test", "wrong");
		return SUCCESS;
	}
}
