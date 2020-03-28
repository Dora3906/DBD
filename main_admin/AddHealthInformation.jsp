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
		if(AddHealthInformation_form.S_ID.value == "")
		{//判断用户名是否为空
			alert("学号不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.S_ID.value.length>11)
		{//判断用户名是否为空
			alert("学号不能超过11位！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.HI_Grade.value == "")
		{//判断用户名是否为空
			alert("年级不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.Eyesight.value == "")
		{//判断用户名是否为空
			alert("视力不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.Height.value == "")
		{//判断用户名是否为空
			alert("身高不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.Weight.value == "")
		{//判断用户名是否为空
			alert("体重不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.HI_Score.value == "")
		{//判断用户名是否为空
			alert("体测成绩不能为空！");
			reg_form.UserName.focus();
		}
		else if(AddHealthInformation_form.Special.value == "")
		{//判断用户名是否为空
			alert("特殊病情不能为空！");
			reg_form.UserName.focus();
		}
		else
		{
			//设置跳转目的页面
			AddHealthInformation_form.action="AddHealthInformation_Check.jsp";
		}
	}
</script>
	<div class="table">
	<h1 align="center">添加学生健康信息</h1>
<body bgcolor="e6e6e6">
		<form name = "AddHealthInformation_form" onSubmit="check()">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">学号&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="S_ID" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">年级&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="HI_Grade" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">视力&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Eyesight" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">身高&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Height" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">体重&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Weight" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">体测成绩&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="HI_Score" type="text"></td>
		</tr>
		
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">特殊病情&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Special" type="text"></td>
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
