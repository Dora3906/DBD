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
		if(AddBasicInformation_form.S_ID.value == "")
		{//判断用户名是否为空
			alert("学号不能为空！");
			reg_form.UserName.focus();
		}
		if(AddBasicInformation_form.S_ID.value.length>11)
		{//判断用户名是否为空
			alert("学号不能超过11位！");
			reg_form.UserName.focus();
		}
		else if(AddBasicInformation_form.S_Name.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.S_Grade.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.Enrollment.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.S_Gender.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.Address.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.Phone.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else if(AddBasicInformation_form.Cla_ID.value == "")
		{//判断密码是否为空
			alert("姓名不能为空！");
			reg_form.UserPassword.focus();
		}
		else
		{
			//设置跳转目的页面
			AddBasicInformation_form.action="AddBasicInformation_Check.jsp";
		}
	}
</script>
	<div class="table">
	<h1 align="center">添加学生基本信息</h1>
<body bgcolor="e6e6e6">
		<form name="AddBasicInformation_form" onSubmit="check()" >
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">学号&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="S_ID" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">姓名&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="S_Name" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">年级&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="S_Grade" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">入学时间&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Enrollment" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">性别&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="S_Gender" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">地址&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Address" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">电话&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Phone" type="text"></td>
		</tr>
		
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">班级号&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Cla_ID" type="text"></td>
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
