package com.struts.demo;

import java.util.ArrayList;
import java.util.List;

public class ActionInvocation {
	List<Interceptor> list = new ArrayList<Interceptor>();
	int index = -1;
	public ActionInvocation() {
		list.add(new FirstInterceptor());
		list.add(new SecondInterceptor());
	}
	public void invoke(){
		index ++;
		if (index >= this.list.size()) {
			
		} else {
			this.list.get(index).intercept(this);
		}
	}
}
