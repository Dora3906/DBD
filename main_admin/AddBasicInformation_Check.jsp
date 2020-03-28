
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
	<h1 align="right">您还未登录</h1>
	</p>
	<% 
	}
	else
	{
		String S_ID = request.getParameter("S_ID");
		String S_Name = new String(request.getParameter("S_Name").getBytes("ISO-8859-1"),"utf-8");
		int S_Grade = Integer.parseInt(request.getParameter("S_Grade"));
		String Enrollment = request.getParameter("Enrollment");
		java.sql.Date Enrollment_date = java.sql.Date.valueOf(Enrollment);
		String S_Gender = new String(request.getParameter("S_Gender").getBytes("ISO-8859-1"),"utf-8");
		String Address = new String(request.getParameter("Address").getBytes("ISO-8859-1"),"utf-8");
		String Phone = request.getParameter("Phone");
		int Cla_ID = Integer.parseInt(request.getParameter("Cla_ID"));
		if(S_ID!=null && student.AddBasicInformation(S_ID, S_Name, S_Grade, Enrollment_date, S_Gender, Address, Phone, Cla_ID))
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