<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()  + path + "/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="<%=basePath%>" />
</head>
<body>
    <hr>
	Struts2中url的相对路径是根据action的路径来决定，而不是jsp的路径，所以尽量不要使用相对路径，一般统一使用绝对路径。<br/>
	使用request.getScheme() 获取请求方式<br/>
	使用request.getServerName() 获取请求的服务名称<br/>
	使用request.getServetPort() 获取请求的服务端口名<br/>
	使用request.getContextPath() 获取请求的上下文路径即服务名称<br/>
	
	<div style="height:10px"></div><hr>
	action 请求三种方式<br/>
	1:直接执行类的execute方法<br/>
	2:实现Action接口<br/>
	3:继承ActionSupport类<br/>
	
	<div style="height:10px"></div><hr>
	action执行的时候并不一定要执行execute方法<br/>
	可以在配置文件中配置Action的时候用method来指定执行哪个方法，
	<br/>也可以在url地址中动态指定(动态方法调用DMI)(推荐)<br/>
	
	<a href="<%=basePath%>user/add">新增用户</a>&nbsp;&nbsp;
    <a href="<%=basePath%>user/update">更新用户</a><br/>
	 通配符--约定优于配置<br/>
	<a href="<%=basePath%>user1/Useradd">新增用户</a>&nbsp;&nbsp;
	<a href="<%=basePath%>user1/Userupdate">更新用户</a>&nbsp;&nbsp;
	<a href="<%=basePath%>user1/Userdelete">删除用户</a>
	
	<div style="height:10px"></div><hr>
	接受参数的方式<br/>
	1.使用属性传递参数<br/>
	get请求 age=10&name=test,并在Action类中，添加相关参数的get,set属性方法<br/>
	<a href="<%=basePath%>user2/user2!add?name=1&age=2">属性传递参数</a><br/>
	2.使用域模型的方法<br/>
	在action类中通过类.属性的方法传递值,可以使用dto,do,vo<br/>
	<a href="<%=basePath%>user3/user3!add?user.name=1&user.age=2">域模型传递参数</a><br/>
	3.使用ModelDriven<br/>
	在action类中实现ModelDirven接口，直接可以new 一个新对象，传递值<br/>
	<a href="<%=basePath%>user4/user4!add?name=1&age=2">ModelDriven传递参数</a>
	
	<div style="height:10px"></div><hr>
	<form action="<%=basePath%>user3/user3!add" method="post">
		姓名:<input name="user.name"><input type="submit" value="提交" />
	</form>
	
	<div style="height:10px"></div><hr>
	值栈--数据校验 attr 在整个值栈中搜索<br/>
	<a href="<%=basePath%>user2/user2!add?name=1&age=2">值栈的使用</a><br/>
	<a href="<%=basePath%>user2/user2!getObj?">获取request session application 对象</a>
	
	<div style="height:10px"></div><hr>
	依赖注入传递request session application<br/>
	<a href="<%=basePath%>user3/user3!getObj?">获取request session application 对象</a>
	
	<div style="height:10px"></div><hr>
	servlet传递request session application<br/>
	<a href="<%=basePath%>user4/user4!getObj?">获取request session application 对象</a>
	
	<div style="height:10px"></div><hr>
	result结果<br/>
	1.dispatcher 不能跳转到action 只能跳转到视图(服务器跳转)
	<a href="<%=basePath%>dispatcher">dispatcher</a><br/>
	2.redirect 不能跳转到action 只能跳转到视图(客户端跳转)
	<a href="<%=basePath%>redirect">redirect</a><br/>
	3.chain 跳转到视图 (action跳转)
	<a href="<%=basePath%>chain">chain</a><br/>
	4.redirectAction 客户端跳转
	<a href="<%=basePath%>redirectAction">redirectAction</a>
	5.freemarker<br/>
	6.httpheader<br/>
	7.stream<br/>
	8.velocity<br/>
	9.xslt<br/>
	10.plaintext<br/>
	11.tiles<br/>
	
	<div style="height:10px"></div><hr>
	动态结果集 struts.xml 读取值栈属性的值
	
    <div style="height:10px"></div><hr>
    <a href="<%=basePath%>ognl/ognl?name=123&pwd=456&user.age=18">ognl表达式</a>
    user.xxx 只有传才会构造。如果要初始化domain model ,可以自己new,也可以传递参数值，但是必须保证一个空的构造方法<br/>
    <a href="<%=basePath%>ognl/ognl?name=123&pwd=456&cat.friend.name=oudy">ognl</a>对象图导航语言

    <div style="height:10px"></div><hr>
    <a href="<%=basePath%>tags/tags?name=123&pwd=456">struts标签</a><br/>
    
    <div style="height:10px"></div><hr>
    <a href="<%=basePath%>theme/theme?">theme主题</a>
    
    <div style="height:10px"></div><hr>
          <a href="<%=basePath%>login/login?" >国际标准语言</a>
          
    <div style="height:10px"></div><hr>
    <a href="<%=basePath%>test/test?" >源码debug</a>
    
    <div style="height:10px"></div><hr>
    <a href="<%=basePath%>convert/convert?" >类型转换</a>
</body>
</html>