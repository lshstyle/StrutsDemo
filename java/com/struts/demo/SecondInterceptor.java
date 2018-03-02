package com.struts.demo;

public class SecondInterceptor implements Interceptor {

	@Override
	public void intercept(ActionInvocation invcation) {
		// TODO Auto-generated method stub
		System.out.println("执行第二个interceptor开始");
		invcation.invoke();
		System.out.println("执行第二个interceptor结束");
	}

}
