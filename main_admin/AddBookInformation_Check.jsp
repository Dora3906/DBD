
<%@page import="jdk.nashorn.internal.runtime.linker.JavaAdapterFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	<h1 align="center">您还未登录</h2>
	</p>
	<% 
	}
	else
	{
		String B_ID = request.getParameter("B_ID");
		String B_Name = new String(request.getParameter("B_Name").getBytes("ISO-8859-1"),"utf-8");
		String Author = new String(request.getParameter("Author").getBytes("ISO-8859-1"),"utf-8");
		String B_Type = new String(request.getParameter("B_Type").getBytes("ISO-8859-1"),"utf-8");
		int Amount = Integer.parseInt(request.getParameter("Amount"));
		
		if(B_ID!=null && student.AddBook(B_ID, B_Name, Author, B_Type, Amount))
		{
			%>
			<p align="center">
			<h1 align="center">添加成功！</h1>
			</p>
			<%
				}
				else{
			%>
			<p align="center">
			<h1 align="center">添加失败！</h1>
			</p>
			<%
				}
			%>
	
	<div align="center">
	<button type="button" class="button1" onclick="javascript:window.close();">关闭</button>
	</div>
	<%
	}
	%>
	
	
</head>
<body>

</body>
</html>