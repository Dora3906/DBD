<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="teacher" class="com.ch11.teacher" scope="page"></jsp:useBean>
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
	<body bgcolor="#e6e6e6" class="table">
		<h2><p align="center">修改学生信息</font></p></h2>
		<div align="center">
		<form name="changegrade" method="post" action="update_grade_save.jsp?S_ID=<%=request.getParameter("S_ID")%>&C_ID=<%=request.getParameter("C_ID")%>">
		<table width="80%" border="0">
		<tr>
		<td width="45%" align="right">应到次数：</td>
		<td width="55%" align="left"><input type="text" name="Attendance_Should"  value="<%=request.getParameter("Attendance_Should")%>"></td>
		</tr>
		<tr>
		<td width="45%" align="right">出勤次数：</td>
		<td width="55%" align="left"><input type="text" name="Attendance_Already"  value="<%=request.getParameter("Attendance_Already")%>"></td>
		</tr>
		<tr>
		<td width="45%" align="right">成绩：</td>
		<td width="55%" align="left"><input type="text" name="SC_Score"  value="<%=request.getParameter("SC_Score")%>"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<input type="submit" name="sub" value="修改">&nbsp;&nbsp;
		<input type="reset" name="res" value="清除">
		</td>
		</tr>
		</table>
		</form>
		</div>
	</body>
</html>
