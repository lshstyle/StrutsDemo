<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ognl</title>
</head>
<body>
	访问值栈中action的普通属性 <s:property value="pwd"/><br/>
	访问值栈中对象的普通属性<s:property value="user.age" /><br/>
	访问值栈中对象的普通属性<s:property value="cat.friend.name" /><br/>
	访问值栈中对象的普通属性<s:property value="cat.eat()" /><br/>
	访问静态方法<s:property value="@com.struts.demo.model.Statics@s" /><br/>
	访问静态属性<s:property value="@com.struts.demo.model.Statics@getStr()" /><br/>
	访问Math类的方法<s:property value="@@max(2,3)" /><br/>
	访问普通类的构造方法<s:property value="new com.struts.demo.model.User(8)" /><br/>
	
	<div style="height:10px"></div><hr>
	访问集合类List<s:property value="users" /><br/>
	访问集合类List的某一个元素<s:property value="users[1]" /><br/>
	访问集合类List的某一个属性集合<s:property value="users.{age}" /><br/>
	访问集合类List的某一个属性集合的特定值<s:property value="users.{age}[0]" /><br/>
	访问集合类Set<s:property value="dogs" /><br/>
	访问集合类Set中的某个元素<s:property value="dogs[1]" /><br/>
	访问集合类Map<s:property value="dogMap" /><br/>
	访问集合类Map的某一个元素<s:property value="dogMap.dog100" /><br/>
	访问集合类Map的key<s:property value="dogMap.keys" /><br/>
	访问集合类Map的value<s:property value="dogMap.values" /><br/>
	访问集合类Mapd的大小<s:property value="dogMap.size()" /><br/>
	
	<div style="height:10px"></div><hr>
	投影：过滤<s:property value="users.{?#this.age==1}" /><br/>
	投影：锁定开头<s:property value="users.{^#this.age>1}.{age}" /><br/>
	投影：锁定结尾<s:property value="users.{$#this.age>1}.{age}" /><br/>
	投影：判断<s:property value="users.{$#this.age>1}.{age} == null" /><br/>
	[]<s:property value="[1]" /><br/>
	
	
	<s:debug></s:debug>
</body>
</html>