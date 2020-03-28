<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
		  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
		  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<style>
			*{
				margin:0;
			}
			#information{
				width: 90rem;
				height: 40rem;
			}
			#head{
				width: 80rem;
				height:3rem;
				background-color: #333333;
			}
			#head p{
				font-size: 2rem;
				font-family: "黑体";
				color: #FFFFFF;
			}
			#title{
				background-color:#CAE1FF ;
				width: 5rem;
				font-size:14px;
			}
			#content{
				width:40rem;
				font-size:14px;
			}
			.fontbtcss{
				font-family:"微软雅黑";
				font-size: 28px;
				color:#FFFFFF;
			}
			.fonthcss{
				font-family:"微软雅黑";
				font-size: 14px;
				color:#393939;
			}
			a{
			margin-left:75rem;
			}
			#pbutton{
			border-radius:3px;
			}
		</style>
</head>
<body>
<%
	String Username=(String)session.getAttribute("UserName");
	student.getBasicInformation(Username);
	
	String S_ID=student.getS_ID();
    String S_Name=student.getS_Name();
    String Enrollment=student.getEnrollment();
    String S_Gender=student.getS_Gender();
    String Address=student.getAddress(Username);
    String Phone=student.getPhone();
    String Cla_Name=student.getCla_Name();
    int S_Grade=student.getS_Grade();
    String Depa_Name=student.getDepa_Name();
    String Spe_Name=student.getSpe_Name();
    int Spe_ID=student.getSpe_ID();
    String ClsaaTeacher_Name=student.getClsaaTeacher_Name();
    String T_Gender=student.getT_Gender();
    int Depa_ID=student.getDepa_ID();
    
    float Eyesight=student.getEyesight(Username);
    int Height=student.getHeight();
    float Weight=student.getWeight();
    float HI_Score=student.getHI_Score();
    String Special=student.getSpecial();
    float BMI=student.getBMI();
%>
<div id="information">
			<table class="sui-table table-bordered">
				<tr >
					<td class="fontbtcss" bgcolor="#393939" align="center" height="50" colspan="4">
						基本信息
						<a href="changePassword.jsp" >
					<input type="button" class="btn-large btn-primary" value="修改密码" id="pbutton"></a>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						学号
					</td>
					
					<td id="content">
						<%=S_ID %>
					</td>
					
					<td id="title">
						姓名
					</td>
					
					<td id="content">
						<%=S_Name %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						入学时间
					</td>
					
					<td id="content">
						<%=Enrollment %>
					</td>
					
					<td id="title">
						性别
					</td>
					
					<td id="content">
						<%=S_Gender %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						地址
					</td>
					
					<td id="content">
						<%=Address %>
					</td>
					
					<td id="title">
						电话
					</td>
					
					<td id="content">
						<%=Phone %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						班级名
					</td>
					
					<td id="content">
						<%=Cla_Name %>
					</td>
					
					<td id="title">
						年级
					</td>
					
					<td id="content">
						<%=S_Grade %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						学院名
					</td>
					
					<td id="content">
						<%=Depa_Name %>
					</td>
					
					<td id="title">
						专业名
					</td>
					
					<td id="content">
						<%=Spe_Name %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						班主任姓名
					</td>
					
					<td id="content">
						<%=ClsaaTeacher_Name %>
					</td>
					
					<td id="title">
						班主任性别
					</td>
					
					<td id="content">
						<%=T_Gender%>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						视力
					</td>
					
					<td id="content">
						<%=Eyesight %>
					</td>
					
					<td id="title">
						身高
					</td>
					
					<td id="content">
						<%=Height %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						体重
					</td>
					
					<td id="content">
						<%=Weight %>
					</td>
					
					<td id="title">
						体测成绩
					</td>
					
					<td id="content">
						<%=HI_Score %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title">
						特殊病情
					</td>
					
					<td id="content">
						<%=Special %>
					</td>
					
					<td id="title">
						体质指数
					</td>
					
					<td id="content">
						<%=BMI %>
					</td>
				</tr>
				
			</table>
		</div>
</body>
</html>