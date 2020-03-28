<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="teacher" class="com.ch11.teacher" scope="page"></jsp:useBean>
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
		</style>
</head>
<body>
<%
	String S_ID=request.getParameter("S_ID");
	ResultSet Teacher_rs = null;
	Teacher_rs = teacher.getStudentBasicInformation(S_ID);
	Teacher_rs.next();
	
    String S_Name=Teacher_rs.getString("S_Name");
    String Enrollment=Teacher_rs.getString("Enrollment");
    String S_Gender=Teacher_rs.getString("S_Gender");
    String Address=Teacher_rs.getString("Address");
    String Phone=Teacher_rs.getString("Phone");
    String Cla_Name=Teacher_rs.getString("Cla_Name");
    int S_Grade=Teacher_rs.getInt("S_Grade");
    String Depa_Name=Teacher_rs.getString("Depa_Name");
    String Spe_Name=Teacher_rs.getString("Spe_Name");
    int Spe_ID=Teacher_rs.getInt("Spe_ID");
    String T_Name=Teacher_rs.getString("T_Name");
    String T_Gender=Teacher_rs.getString("T_Gender");
    int Depa_ID=Teacher_rs.getInt("Depa_ID");
    
    float Eyesight=Teacher_rs.getFloat("Eyesight");
    int Height=Teacher_rs.getInt("Height");
    float Weight=Teacher_rs.getFloat("Weight");
    float HI_Score=Teacher_rs.getFloat("HI_Grade");
    String Special=Teacher_rs.getString("Special");
    float BMI=0;
%>
<div id="information">
			<table class="sui-table table-bordered">
				<tr>
					<td class="fontbtcss" bgcolor="#393939" align="center" height="50" colspan="4">
						基本信息
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
						<%=T_Name %>
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
					<%
						BMI=(Weight/2)/(((float)Height/100)*((float)Height/100));
						BMI = ((float)Math.round(BMI*10))/10;
					%>
					<%=BMI %>
					</td>
				</tr>
				
			</table>
		</div>
</body>
</html>