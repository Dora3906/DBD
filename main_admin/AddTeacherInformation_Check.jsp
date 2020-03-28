
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
	<h1 align="right">您还未登录</h2>
	</p>
	<% 
	}
	else
	{
		String T_ID = request.getParameter("T_ID");
		String T_Name = new String(request.getParameter("T_Name").getBytes("ISO-8859-1"),"utf-8");
		String T_Gender = new String(request.getParameter("T_Gender").getBytes("ISO-8859-1"),"utf-8");
		String Title = new String(request.getParameter("Title").getBytes("ISO-8859-1"),"utf-8");
		int Depa_ID = Integer.parseInt(request.getParameter("Depa_ID"));
		if(T_ID!=null && student.AddTeacherInformation(T_ID, T_Name, Title, T_Gender, Depa_ID))
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
			<h1 align="center">添加失败！(可能该教师已在数据库中，请检查后重试)</h1>
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