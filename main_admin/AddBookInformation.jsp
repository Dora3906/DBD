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
		if(AddBookInformation_form.B_ID.value == "")
		{//判断用户名是否为空
			alert("书号不能为空！");
			AddBookInformation_form.B_ID.focus();
		}
		else if(AddBookInformation_form.B_ID.value.length>10)
		{//判断用户名是否为空
			alert("书号不能超过10位！");
			AddBookInformation_form.B_ID.focus();
		}
		else if(AddBookInformation_form.B_Name.value == "")
		{//判断密码是否为空
			alert("书名不能为空！");
			AddBookInformation_form.B_Name.focus();
		}
		else if(AddBookInformation_form.Author.value == "")
		{//判断密码是否为空
			alert("作者不能为空！");
			AddBookInformation_form.Author.focus();
		}
		else if(AddBookInformation_form.B_Type.value == "")
		{//判断密码是否为空
			alert("类型不能为空！");
			AddBookInformation_form.B_Type.focus();
		}
		else if(AddBookInformation_form.Amount.value == "")
		{//判断密码是否为空
			alert("余量不能为空！");
			AddBookInformation_form.Amount.focus();
		}
		else if(AddBookInformation_form.Amount.value.lengh<0)
		{//判断密码是否为空
			alert("余量不能小于零！");
			AddBookInformation_form.Amount.focus();
		}
		else
		{
			//设置跳转目的页面
			AddBookInformation_form.action="AddBookInformation_Check.jsp";
		}
	}
</script>
	<div class="table">
	<h1 align="center">添加书本信息</h1>
<body bgcolor="e6e6e6">
		<form name="AddBookInformation_form" onSubmit="check()">
			<table width="70%" align="center" border=0 cellpadding="0" cellspacing="0">
		
		
		<tr>
			<td width="44%" align="right" class="fonthcss">书号&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="B_ID" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">书名&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="B_Name" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">作者&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Author" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">类型&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="B_Type" type="text"></td>
		</tr>
		
		<tr>
			<td width="44%" align="right" class="fonthcss">剩余本数&nbsp;&nbsp;</td>
			<td width="56%" align="left"><input name="Amount" type="text"></td>
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
