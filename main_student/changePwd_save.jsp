<%@ page contentType="text/html; charset=utf-8" language="java" %>
 <%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String UserName = (String)session.getAttribute("UserName");
	String pwd = request.getParameter("newPwd");
	boolean judge = false;
	if(UserName==null||UserName==""){
%>
	
	<p align="center">
	<h1 align="right">您还未登录</h2>
	</p>
	<% 
	}
	else
	{
		judge = student.changepwd(UserName,pwd);
	}
	if(judge)
	{
	%>
	<p align="center">
	<h1 align="center">密码修改成功！</h2>
	</p>

	
	<%
	}
	else{
		%>
		<p align="center">
		<h1 align="center">密码修改失败！</h2>
		</p>
		<%
	}
	%>
	
	
</head>
<body>

</body>
</html>