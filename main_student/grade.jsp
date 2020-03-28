<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	.fontbtcss{
		font-family:"微软雅黑";
		font-size: 18px;
		color:#FFFFFF;
	}
	.fontdbcss{
		font-family:"微软雅黑";
		font-size: 15px;
		color:#FFFFFF;
	}
	.fonthcss{
		font-family:"微软雅黑";
		font-size: 14px;
		color:#393939;
	}
</style>
<script type="text/javascript">
	window.onload = function()
	{
		var cur;
		var tr = document.getElementsByTagName("tr");
		for(var i=1;i<tr.length-1;i++)
		{
			tr[i].onclick = function()
			{
				cur ? cur.style.backgroundColor = 'white' : '';
				changecolor(this);
				cur = this;
			}
		}
	}
	function changecolor(obj){
	obj.style.backgroundColor= "#d9f0fa" ;
	}
</script>
</head>
<body>
<div >
			<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
				<tr  class="fontbtcss" bgcolor="#393939" align="center" height="50">
					<td width="11.1%">课程号</td>
					<td width="11.1%">课程名</td>
					<td width="11.1%">所属学院</td>
					<td width="11.1%">授课教师</td>
					<td width="11.1%">成绩</td>
					<td width="11.1%">绩点</td>
					<td width="11.1%">类别</td>
				</tr>
			
				<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Grade_rs = null;
				    Grade_rs = student.getGradeInformation(S_ID);
			    	double sum=0;
			    	int n=0;
			    	int guake=0;
				    
				    while(Grade_rs.next()){
				    	String C_ID = Grade_rs.getString("C_ID");
					    String C_Name = Grade_rs.getString("C_Name");
					    String C_Depa_Name = Grade_rs.getString("Depa_Name");
					    String C_Teacher_Name = Grade_rs.getString("T_Name");
					    String C_Score =  Grade_rs.getString("SC_Score");
					    String C_Type = Grade_rs.getString("SC_Type");
					    if(C_Score!=null){
						   	double score=Double.parseDouble(C_Score);
				%>
				
					<tr class="fonthcss" align="center" height="50">
						<td width="11.1%">
							<%=C_ID %>
						</td>
						
						<td width="11.1%">
							<%=C_Name %>
						</td>
						
						<td width="11.1%">
							<%=C_Depa_Name %>
						</td>
						
						<td width="11.1%">
							<%=C_Teacher_Name %>
						</td>
						
						<td width="11.1%">
							<%=C_Score %>
						</td>
						
						<td width="11.1%">
							<%
								double Jidian;
								if(score>=60&&score<=65)Jidian=1;
								else if(score>=65&&score<70)Jidian=1.5;
								else if(score>=70&&score<75)Jidian=2;
								else if(score>=75&&score<80)Jidian=2.5;
								else if(score>=80&&score<85)Jidian=3;
								else if(score>=85&&score<90)Jidian=3.5;
								else if(score>=90&&score<95)Jidian=4;
								else if(score>=95&&score<=100)Jidian=4.5;
								else Jidian=0;
								if(Jidian==0)guake++;
								sum=sum+Jidian;
								n++;
							%>
							<%=Jidian %>
						</td>
						
						<td width="11.1%">
							<%=C_Type %>
						</td>
					</tr>
				
				<%
				    }
				  }
				%>
					<tr  class="fontdbcss" bgcolor="#393939" align="center" height="50">
						<td colspan="2">已选修课程数：<%=n%></td>
						<td colspan="3">平均绩点：<%=sum/n%></td>
						<td colspan="2">挂科门数：<%=guake%></td>
					</tr>
			</table>
		</div>
</body>
</html>