package com.struts.demo.model;

public class User {
	private String name;
	private String age = "12";
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
	
	public User() {
		
	}
	
	public User(String age) {
		super();
		this.age = age;
	}
	
	public String toString() {
		return this.age;
	}
	
}
