<%@page import="com.ch11.teacher"%>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page  import="java.sql.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<jsp:useBean class="com.ch11.teacher" id="teacher" scope="page"/>
	</head>
	<body>
	<%
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		String A_ID = request.getParameter("A_ID");
		if(teacher.updateauthorizationY(A_ID))
		{
			response.sendRedirect("AskForLeaveInformation.jsp");
		}
		else
		{
			out.print("发生了错误");
		}
		%>
	</body>
</html>