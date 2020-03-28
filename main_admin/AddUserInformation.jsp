<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<script language="javascript">
	function check()
	{
		if(AddUserInformation_form.NUserName.value == "")
		{//判断用户名是否为空
			alert("账号不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddUserInformation_form.NUserName.value.length>11)
		{//判断用户名是否为空
			alert("账号不能超过11位！");
			reg_form.UserName.focus();
		}
		
		else if(AddUserInformation_form.PassWord.value == "")
		{//判断用户名是否为空
			alert("密码不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddUserInformation_form.UserType.value == "")
		{//判断用户名是否为空
			alert("用户类型不能为空！");
			reg_form.UserName.focus();
		}
		
		else
		{
			//设置跳转目的页面
			AddUserInformation_form.action="AddUserInformation_Check.jsp";
		}
	}
</script>
	<div class="table">
	<h1 align="center">添加新用户</h1>
<body bgcolor="e6e6e6">
		<form name = "AddUserInformation_form" onSubmit="check()">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">账号&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="NUserName" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">密码&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="PassWord" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">用户类型&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="UserType" type="text"></td>
		</tr>
		
		
		<tr>
		<td colspan="2" align="center">
		<br>
		<button type="submit" class="button1" >确认</button>&nbsp;&nbsp;
		<button type="button" class="button1" onclick="javascript:window.close();window.opener.location.reload();">关闭</button>
		</td>
		</tr>
		</table>
		</form>
	</body>
	</div>
</html>
