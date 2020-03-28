<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
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
		if(change_form.newPwd.value == "")
		{//判断用户名是否为空
			alert("密码不能为空！");
			change_form.newPwd.focus();
		}
		else if(change_form.newPwd.value.length<6||change_form.newPwd.value.length>16)
		{//判断用户名是否为空
			alert("密码不能少于6位或大于16位！");
			change_form.newPwd.focus();
		}
		
		else if(change_form.confirmPwd.value == "")
		{//判断用户名是否为空
			alert("密码确认不能为空！");
			change_form.confirmPwd.focus();
		}
		else if(change_form.newPwd.value!=change_form.confirmPwd.value)
		{//判断用户名是否为空
			alert("两次输入的密码不一致！");
			change_form.newPwd.focus();
		}
		else
		{
			//设置跳转目的页面
			change_form.action="changePwd_save.jsp";
		}
	}
</script>
			
	</head>
	
	<div class="table">
	<h1 align="center">修改密码</h1>
	<body>
		<form name = "change_form" onSubmit="check()">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		<tr>
			<td width="44%" align="right" class="fonthcss">用户名&nbsp;&nbsp;</td>
			<td width="56%" align="left"><label><%=session.getAttribute("UserName") %></label></td>
		</tr>
		<tr>
			<td width="44%" align="right" class="fonthcss">新密码&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="newPwd" type="password" placeholder="6~15位" ></td>
		</tr>
		<tr>
			<td width="44%" align="right" class="fonthcss">确认密码&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="confirmPwd" type="password" placeholder="6~15位" ></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<button type="submit" class="button1" >确认</button>&nbsp;&nbsp;
		<button type="reset" class="button1" >重置</button>
		</td>
		</tr>
		</table>
		</form>
	</body>
	</div>
</html>
