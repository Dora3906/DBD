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
	if(UserName==null||UserName==""){
	%>
	
	<p align="center">
	<h1 align="right">您还未登录</h2>
	</p>
	<% 
	}
	else
	{
		String B_ID = request.getParameter("B_ID");
		int Amount = Integer.parseInt((String)request.getParameter("Amount"));
		if(Amount>0)
			if(student.BorrowBook(UserName,B_ID))
			{
				student.Correct(B_ID, Amount);
				%>
				<p align="center">
				<h1 align="center">借阅成功！</h2>
				</p>
			<%
			}
			else{
			%>
			<p align="center">
				<h1 align="center">无法重复借阅，借阅失败！</h2>
			</p>
			<%
			}
		else
		{
			%>
			<p align="center">
				<h1 align="center">本书数量不足，借阅失败！</h2>
			</p>
			<%
		}
		%>
	
	
	
	<div align="center">
	<button type="button" class="button1" onclick="javascript:window.close();window.opener.location.reload();">关闭</button>
	</div>
	<%
	}
	%>
	
	
</head>
<body>

</body>
</html>