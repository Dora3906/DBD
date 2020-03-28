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
		String BeginDate = request.getParameter("BeginDate");
		String EndDate = request.getParameter("EndDate");
		String Leave_Type = new String(request.getParameter("Leave_Type").getBytes("ISO-8859-1"),"utf-8");;
		String Reason = new String(request.getParameter("Reason").getBytes("ISO-8859-1"),"utf-8");;

		student.AddLeaveRecord(UserName,BeginDate,EndDate,Leave_Type,Reason);

	%>
	<p align="center">
	<h1 align="center">申请成功！</h2>
	</p>
	
	
	
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