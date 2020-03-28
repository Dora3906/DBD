<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Delete User</title>
</head>
<body>
<%
	String UserName = request.getParameter("UserName");
	System.out.println("\n"+UserName);
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	if(student.deleteUser(UserName))
	{
%>
		<p align="center">
			<h1 align="center">删除成功！</h1>
		</p>
	<% 
	}
	else
	{
	%>
		<p align="center">
			<h1 align="center">删除失败！</h1>
		</p>
	<%
	}
	%>
	<div align="center">
	<button type="button" class="button1" onclick="javascript:window.close();window.opener.location.reload();">关闭</button>
	</div>
</body>
</html>