<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>用户登陆验证</title>	
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
	
		//获取登录的用户名
		String UserName = request.getParameter("UserName");
		//设置users中的UserName变量
		users.setUserName(UserName);
		//获取登录的密码
		String UserPassword = request.getParameter("UserPassword");	
		//设置users中的UserPassword变量
		users.setUserPassword(UserPassword);
	
		//判断登录的用户名和密码是否正确		
		if(users.user_valid())
		{
			//将用户名和用户编号保存到session中
			session.setAttribute("UserName",UserName);
			//跳转到登录用户主页
			System.out.println("验证成功！+用户类型"+users.getType("UserName"));
			if(users.getType(UserName)==0)
				response.sendRedirect("/DBD/main_student/main_Info.jsp");
			else if(users.getType(UserName)==1)
				response.sendRedirect("/DBD/main_teacher/main_Info.jsp");
			else if(users.getType(UserName)==2)
				response.sendRedirect("/DBD/main_housemaster/main_Info.jsp");
			else if(users.getType(UserName)==3)
				response.sendRedirect("/DBD/main_admin/main_StudentManagement.jsp");
		}
		else
		{
	%>
		<script language="javascript">
			alert("您输入的用户名或密码有误，请重新输入！");
		</script>
	<%
		}
	%>
	
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

	</body>
</html>
