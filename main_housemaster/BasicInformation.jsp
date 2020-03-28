<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="housemaster" class="com.ch11.housemaster" scope="page"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
		  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
		  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<style>
.a1{
		font-family:"微软雅黑";
		font-size: 16px;
	}
			*{
				margin:0;
			}
			#information{
			font-family:"微软雅黑";
		font-size: 15px;
				width: 90rem;
				height: 40rem;
			}
			#head{
				width: 80rem;
				height:3rem;
				background-color: #333333;
				align: center;
				margin-top:10px;
			}
			#head p{
				font-size: 2rem;
				font-family: "黑体";
				color: #FFFFFF;
			}
			#title{
				background-color:#CAE1FF ;
				width: 5rem;
			}
			#content{
				width:40rem;
			}
			.fontbtcss{
				font-family:"微软雅黑";
				font-size: 28px;
				color:#FFFFFF;
			}
			a{
			margin-left:67rem;
			}
			#pbutton{
			border-radius:3px;
			}
		</style>
</head>
<body>
<%
	String Username=(String)session.getAttribute("UserName");
	System.out.print("职工号"+Username);
	housemaster.getBasicInformation(Username);
	
	String S_ID=housemaster.getH_ID();
    String S_Name=housemaster.getH_Name();
    String S_Sex=housemaster.getH_Sex();
%>
<div id="information">
			<table class="sui-table table-bordered">
				<tr>
					<tr >
					<td class="fontbtcss" bgcolor="#393939" align="center" height="50" colspan="4">
						宿舍职工基本信息
						<a href="changePassword.jsp" >
					<input type="button" class="btn-large btn-primary" value="修改密码" id="pbutton"></a>
					</td>
				</tr>
				</tr>
				
				<tr height="50">
					<td id="title">
						宿管职工号
					</td>
					
					<td id="content">
						<%=S_ID %>
					</td>
					
					<td id="title">
						宿管姓名
					</td>
					
					<td id="content">
						<%=S_Name %>
					</td>
				</tr>
				
				<tr height="50">
					<td id="title" >
						宿管性别
					</td>
					<td colspan="3">
						<%=S_Sex %>
					</td>
				</tr>
				
			</table>
		</div>
</body>
</html>