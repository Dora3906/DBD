
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
		String C_Name = new String(request.getParameter("C_Name").getBytes("ISO-8859-1"),"utf-8");
		int Spe_ID = Integer.parseInt(request.getParameter("Spe_ID"));
		String T_ID = request.getParameter("T_ID");
		if(C_Name!=null && student.AddCourseInformation(C_Name, Spe_ID))
		{
			ResultSet rs = student.getCourseID(C_Name);
			int C_ID=0;
			while(rs.next()){
				C_ID = rs.getInt("C_ID");
			}
			if(C_ID!=0&&student.AddCourse_TeacherInformation(C_ID, T_ID))
			{
			%>
			<p align="center">
			<h1 align="center">添加成功！</h2>
			</p>
			<%}
		}
		else{
			%>
			<p align="center">
			<h1 align="center">添加失败！</h2>
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