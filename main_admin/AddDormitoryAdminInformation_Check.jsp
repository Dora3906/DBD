
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
		String DA_ID = request.getParameter("DA_ID");
		String DA_Name = new String(request.getParameter("DA_Name").getBytes("ISO-8859-1"),"utf-8");
		String DA_Gender = new String(request.getParameter("DA_Gender").getBytes("ISO-8859-1"),"utf-8");
		if(DA_ID!=null && student.AddDormitoryAdmin(DA_ID, DA_Name, DA_Gender))
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