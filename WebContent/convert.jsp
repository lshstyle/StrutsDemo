<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国际标准语言</title>
</head>
<body>
	
	<s:property value="name" /><br/>
	<s:property value="age" /><br/>
	<s:property value="d" /><br/>
	<s:date name="d" format="yyyy-MM-dd HH:mm:ss" /><br/>
	<s:property value="lists" /><br/>
	<s:property value="p" /><br/>
	<s:property value="points" /><br/>
	<s:debug></s:debug>
	
	<pre>
		lists=math&lists=english
	</pre>
</body>
</html>