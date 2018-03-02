package com.struts.demo.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.demo.model.Cat;
import com.struts.demo.model.Dog;
import com.struts.demo.model.User;

public class OgnlAction extends ActionSupport{
	
	private String name;
	private String pwd;
	private User user;
	private Cat cat;
	private List<User> users = new ArrayList<User>();
	private Map<String, Dog> dogMap = new HashMap<String, Dog>();
	private Set<Dog> dogs = new HashSet<Dog>();
	public Cat getCat() {
		return cat;
	}
	public void setCat(Cat cat) {
		this.cat = cat;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public Map<String, Dog> getDogMap() {
		return dogMap;
	}
	public void setDogMap(Map<String, Dog> dogMap) {
		this.dogMap = dogMap;
	}
	public Set<Dog> getDogs() {
		return dogs;
	}
	public void setDogs(Set<Dog> dogs) {
		this.dogs = dogs;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String execute() {
		return SUCCESS;
	}
	
	public OgnlAction() {
		users.add(new User("1"));
		users.add(new User("2"));
		users.add(new User("3"));
		
		dogs.add(new Dog("dog1"));
		dogs.add(new Dog("dog2"));
		dogs.add(new Dog("dog3"));
		
		dogMap.put("dog100", new Dog("dog100"));
		dogMap.put("dog101", new Dog("dog101"));
		dogMap.put("dog102", new Dog("dog102"));
	}

}
