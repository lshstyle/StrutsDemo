package com.struts.demo.model;

public class Cat {
	private String name;
	private String food;
	private Dog friend;
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
	public Dog getFriend() {
		return friend;
	}
	public void setFriend(Dog friend) {
		this.friend = friend;
	}
	
	public String eat() {
		return "fish";
	}
}
