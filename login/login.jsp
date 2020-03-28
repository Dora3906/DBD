<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<style type="text/css">	
	
	#bg{
		width:100rem;
		height:50rem;
	}
	
	#none{
		height:8rem;
		width:100rem;
		color:white;
	}
	#register_content{
	padding-top:80px;
	}
	#pcontent{
	padding-top:20rem;
	padding-left:20rem;
	float:left;
	font-size:80px;
	font-family:"华文行楷";
	color:white;
	}
</style>
</head>
<body>
<div id="bg">
	<div>
		<jsp:include page="head.jsp"></jsp:include>
	</div>
	<div id="none">
	<div id="pcontent">
	<table>
	<tr height="80px">
	<td>
	厚德兴业
	</td>
	</tr>
	<tr height="80px">
	<td>
	三干三创
	</td>
	</tr>
	</table>
	</div>
	<div id="register_content">
		<jsp:include page="index.jsp"></jsp:include>
	</div>
	
	
	</div>
</div>
<%
	session.setAttribute("Cla_ID", 0);
	System.out.println(session.getAttribute("Cla_ID").toString());
%>
</body>
</html>