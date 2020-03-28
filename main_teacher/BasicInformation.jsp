<%@page import="com.ch11.teacher"%>
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
			a{
			margin-left:75rem;
			}
			#pbutton{
			border-radius:3px;
			}
</style>
</head>
<body>
<div id="information">
			<table class="sui-table table-bordered">
			<%
					String T_ID = (String)session.getAttribute("UserName");
					System.out.print(T_ID);
				    ResultSet Teacher_rs = null;
				    Teacher_rs = teacher.getBasicInformation(T_ID);

				    Teacher_rs.next();
				    String T_Name = Teacher_rs.getString("T_Name");
				    String Title = Teacher_rs.getString("Title");
				    String T_Gender = Teacher_rs.getString("T_Gender");
				    int Depa_ID = Teacher_rs.getInt("Depa_ID");
				    String Depa_Name = Teacher_rs.getString("Depa_Name");
				    int C_ID = Teacher_rs.getInt("C_ID");
				    String C_Name = Teacher_rs.getString("C_Name");
			%>
				<tr>
					<tr >
					<td class="fontbtcss" bgcolor="#393939" align="center" height="50" colspan="4">
						基本信息
						<a href="changePassword.jsp" >
					<input type="button" class="btn-large btn-primary" value="修改密码" id="pbutton"></a>
					</td>
				</tr>
				</tr>	
				<tr height="50">
					<td id="title">
						教师号
					</td>		
					<td id="content">
						<%=T_ID %>
					</td>			
					<td id="title">
						姓名
					</td>				
					<td id="content">
						<%=T_Name %>
					</td>
				</tr>			
				<tr height="50">
					<td id="title">
						职称
					</td>				
					<td id="content">
						<%=Title %>
					</td>				
					<td id="title">
						性别
					</td>				
					<td id="content">
						<%=T_Gender %>
					</td>
				</tr>		
				<tr height="50">
					<td id="title">
						学院号
					</td>			
					<td id="content">
						<%=Depa_ID %>
					</td>				
					<td id="title">
						学院名
					</td>			
					<td id="content">
						<%=Depa_Name %>
					</td>
				</tr>	
					
				<tr height="50">
					<td id="title">
						课程号
					</td>				
					<td id="content">
						<%=C_ID %>
					</td>				
					<td id="title">
						专业名
					</td>			
					<td id="content">
						<%=C_Name %>
					</td>
				</tr>	
				<%
				while(Teacher_rs.next()){
			    C_ID = Teacher_rs.getInt("C_ID");
			    C_Name = Teacher_rs.getString("C_Name");
				%>		
				<tr height="50">
					<td id="title">
						课程号
					</td>				
					<td id="content">
						<%=C_ID %>
					</td>				
					<td id="title">
						专业名
					</td>			
					<td id="content">
						<%=C_Name %>
					</td>
				</tr>
				<%
				}
			    Teacher_rs = null;
			    try{
			    Teacher_rs = teacher.getbanjixinxi(T_ID);
			    Teacher_rs.next();
			    String Cla_ID = Teacher_rs.getString("Cla_ID");
			    String Cla_Name = Teacher_rs.getString("Cla_Name");
			    if(Cla_Name!=null||Cla_ID!=null){
				    session.setAttribute("Cla_ID", Integer.parseInt(Cla_ID));
			 	    System.out.println("\n*****"+(Integer)session.getAttribute("Cla_ID")+"*****");
				%>							
				<tr height="50">
					<td id="title">
						所带班级号
					</td>				
					<td id="content">
						<%=Cla_ID %>
					</td>				
					<td id="title">
						所带班级名
					</td>				
					<td id="content">
						<%=Cla_Name %>
					</td>
				</tr>
				<%
			    	}
			    }
			    catch(Exception e){
			    	
			    }
				%>
			</table>
		</div>
</body>
</html>