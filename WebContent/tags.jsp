<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>struts标签</title>
</head>
<body>
    <p>property</p>
	值栈属性值<s:property value="name" /><br/>
	值栈设置默认值<s:property value="admin" default="admin" /><br/>
	值栈取字符串<s:property value="'admin'" /><br/>
	html字符串<s:property value="'<hr/>'" escape = "true" /><br/>
	<div style="height:10px"></div><hr>
	<p>set</p>
	set设定变量值(默认为request和actionContext)<s:set var="adminName" value="name" /><br/>
	从request取值<s:property value="#request.adminName"/><br/>
	从actionContext取值<s:property value="#adminName" /><br/>
	bean<s:bean var="myDog" name="com.struts.demo.model.Dog">
			<s:param name="name" value="'dog1'"></s:param>
		</s:bean><br/>
    包含文件<s:include value="/include1.html" /><br/>
    %的用法，动态的从变量中获取包含文件的地址<br/>
    <s:set var="incPage" value="'/include1.html'" />
    <s:include value="%{#incPage}" /><br/>
    	<div style="height:10px"></div><hr>
    	#%$的区别<br/>
    	1.$用于xml文件中，获取变量的值<br/>
    	2.%用于强调后面的值转换ognl表达式<br/>
    	3.#用于获取ActinContext的变量值<br/>
    	
    	<div style="height:10px"></div><hr>
	if elseif else:<br/> 
	age = <s:property value="#parameters.age[0]" /><br/>
	<s:if test="#parameters.age[0]<0">wrong age</s:if>
	<s:elseif test="#parameters.age[0]<20">too young</s:elseif>
	<s:else>yeah</s:else><br/>
	
	<div style="height:10px"></div><hr>
	遍历集合<br/>
	<s:iterator value="{1,2,3}">
		<s:property />|
	</s:iterator><br/>
	<s:iterator value="{'aaa','bbb','ccc'}" var="x" >
		<s:property value="#x.toUpperCase()"/>
	</s:iterator>
	
	<div style="height:10px"></div><hr>
	status使用<br/>
	<s:iterator value="{'a','b','c','d','e','f'}" status="sta">
		<s:property />|
		遍历过的元素总数：<s:property value="#sta.count" />|
		当前遍历的元素索引：<s:property value="#sta.index" />|
		是否是偶数：<s:property value="#sta.even" />|
		是否是奇数：<s:property value="#sta.odd" />|
		是否是第一个：<s:property value="#sta.first" />|
		是否是最后一个：<s:property value="#sta.last" /><br/>
	</s:iterator>
	
	<div style="height:10px"></div><hr>
	遍历map<br/>
	<s:iterator value="#{'1':'a1', '2':'a2','3':'a3'}" var="x">
		<s:property value="#x.key" />
		<s:property value="#x.value" />
	</s:iterator>
 	<s:debug />
</body>
</html>