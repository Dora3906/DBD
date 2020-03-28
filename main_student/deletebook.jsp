<%@page import="com.ch11.teacher"%>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page  import="java.sql.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<jsp:useBean class="com.ch11.student" id="student" scope="page"/>
	</head>
	<body>
	<%
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		String S_ID = (String)session.getAttribute("UserName");
		System.out.print(S_ID);

		String B_ID = request.getParameter("B_ID");
		int Amount = Integer.parseInt(request.getParameter("Amount"));

		student.DeleteBook(S_ID,B_ID);
		student.CorrectDelete(B_ID, Amount);
		response.sendRedirect("BooksInformation.jsp");
	%>
	</body>
</html>