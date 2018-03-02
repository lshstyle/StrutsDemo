package com.struts.demo.model;

public class Dog {
	private String name;
	private String food;
	
	public Dog() {
		this.name = "默认值";
	}
	public Dog(String name) {
		this.name = name;
		this.food = "meat";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	
	public String toString() {
		return this.name + "";
	}
}
