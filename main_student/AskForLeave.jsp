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
				var begin=document.getElementById("begin").value;
				var end=document.getElementById("end").value;
				var type = document.getElementById("type").value;
				var reason = document.getElementById("reason").value;
				var date = new Date();
				var now = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate()
				
				if (begin == "" || end == "" || type == "" || reason == "")
					alert("任一内容不能为空，请您重新核对");
				else if (begin < now)
				{
					alert("开始日期不能早于今日，请您重新核对");
				}
				else if (begin>end)
				{
					alert("开始日期不能在结束日期之后，请您重新核对");
				}
				else
				{
					leave.action="AskForLeave_Check.jsp";
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
	<h1 align="center">发起请假</h1>
	<body >
		<form action="AskForLeave.jsp" onsubmit="panduan()" name="leave">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		<tr>
			<td width="44%" align="right" class="fonthcss">开始日期&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="BeginDate" type="text" id="begin"></td>
		</tr>
		<tr>
			<td width="44%" align="right" class="fonthcss">结束日期&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="EndDate" type="text" id="end"></td>
		</tr>
		<tr>
			<td width="44%" align="right" class="fonthcss">请假类型&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Leave_Type" type="text" id="type"></td>
		</tr>
		<tr>
			<td width="44%" align="right" class="fonthcss">请假原因&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Reason" type="text" id="reason"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<button type="submit" class="button1" >确认</button>&nbsp;&nbsp;
		<button type="button" class="button1" onclick="javascript:window.close();">关闭</button>
		</td>
		</tr>
		</table>
		</form>
	</body>
	</div>
</html>
