package com.struts.demo;

import com.struts.demo.ActionInvocation;
import com.struts.demo.Interceptor;

public class FirstInterceptor implements Interceptor {

	@Override
	public void intercept(ActionInvocation invcation) {
		// TODO Auto-generated method stub
		System.out.println("执行第一个interceptor开始");
		invcation.invoke();
		System.out.println("执行第一个interceptor结束");
	}

}
