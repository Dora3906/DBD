<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<script type="text/javascript">
			function panduan()
			{
				var ying=document.getElementById("ying").value;
				var yi=document.getElementById("yi").value;
				if(parseInt(ying) < parseInt(yi))
				{
					alert("应到次数不能小于出勤次数哦");
				}
				else
				{
					chuqin.action="updatechuqin.jsp";
				}
			}
		</script>
	</head>
	<style>
	.fontbtcss{
		font-family:"微软雅黑";
		font-size: 18px;
		color:#FFFFFF;
	}
	.fonthcss{
		font-family:"微软雅黑";
		font-size: 20px;
		color:#393939;
	}
	.table{
		margin-top: 7rem;
	}
	.button{
		width: 6.25rem;
		height: 1.875rem;
		border-radius: 6px;
		border:none;
	}
	.button1{
		width:6.25rem;
		height:1.875rem;
		text-align:center;
		color:#fff;
		border:none;
		border-radius:8px;
		background:#3d599b;
	}
	.text{
		border: 0;
	}
	</style>
	<div class="table">
	<h1 align="center">修改出勤信息</h1>
	<body bgcolor="e6e6e6">
	<%
		session.setAttribute("S_ID", request.getParameter("S_ID"));
		session.setAttribute("C_ID", request.getParameter("C_ID"));
	%>
		<form action="chuqinxiugai.jsp" method="post" name="chuqin" onsubmit="panduan()">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		<tr>
			<td width="46%" align="right" class="fonthcss">应到次数&nbsp;&nbsp;</td>
			<td width="54%" align="left"><input name="Attendance_Should" type="text" id="ying"></td>
		</tr>
		<tr>
			<td width="46%" align="right" class="fonthcss">出勤次数&nbsp;&nbsp;</td>
			<td width="54%" align="left"><input name="Attendance_Already" type="text" id="yi"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<button type="submit" class="button1">确认</button>&nbsp;&nbsp;
		<button type="reset" class="button1" id="qingchu">清除</button>
		</td>
		</tr>
		</table>
		</form>
	</body>
	</div>
</html>
