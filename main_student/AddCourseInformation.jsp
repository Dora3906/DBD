<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<style>
	.fontbtcss{
		font-family:"微软雅黑";
		font-size: 18px;
		color:#000000;
	}
	.fonthcss{
		font-family:"微软雅黑";
		font-size: 20px;
		color:#393939;
	}
	.table{
		margin-top: 9rem;
	}
	</style>
	<body>
		<h2 align="center">选修课</h2>
		<table width="90%" align="center" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" align="center" height="50">
				<td><b>课程号</b></td>
				<td><b>课程名</b></td>
				<td><b>所属学院</b></td>
				<td><b>专业号</b></td>
				<td><b>专业名</b></td>
				<td><b>授教老师</b></td>
				<td><b>操作</b></td>
			</tr>
			<hr width="90%" align="center"/>
			<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Course_rs = null;
				    Course_rs = student.getAll_CourseInformation();

				    while(Course_rs.next()){
				    	String C_ID = Course_rs.getString("C_ID");
				        String C_Name = Course_rs.getString("C_Name");
				        String C_Depa_Name = Course_rs.getString("Depa_Name");
				        String Spe_ID = Course_rs.getString("Spe_ID");
				        String Spe_Name = Course_rs.getString("Spe_Name");
				        String C_T_Name = Course_rs.getString("T_Name");
				    	
				    	
				%>
			<tr align="center" height="40">
				<td><%= C_ID%></td>
				<td><%= C_Name%></td>
				<td><%= C_Depa_Name%></td>
				<td><%= Spe_ID%></td>
				<td><%= Spe_Name%></td>
				<td><%= C_T_Name%></td>
				<td><a href="AddCourse_Check.jsp?C_ID=<%=C_ID%>"><input type="button" value="选课"  class="sui-btn btn-bordered"></a></td>
			</tr>
			<%
				    }
			%>
		</table>
	</body>
</html>
