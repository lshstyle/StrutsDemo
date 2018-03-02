package com.struts.demo.action;

import java.awt.Point;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private String name;
	private int age;
	Point p;
	
	public String execute() {
		return SUCCESS;
	}
}
