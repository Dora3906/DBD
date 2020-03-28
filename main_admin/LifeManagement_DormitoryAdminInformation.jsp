<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<style>
	*{
		margin:0;
	}
	.fontbtcss{
		font-family:"微软雅黑";
		font-size: 18px;
		color:#FFFFFF;
	}
	.fonthcss{
		font-family:"微软雅黑";
		font-size: 14px;
		color:#393939;
	}
	#tb_title{
		width:100%;
		height:3rem;
		background-color:#393939;
		solid:#ffffff;
	}
	#title{
		text-align:center;
		font=color:#ffffff;
	}
	a{
	font-family:"黑体";
	color: #FFFFFF;
	text-decoration:none;
	font-size: 1.6rem;
	}
	a:hover{
	 color: red;
	}
	</style>
	<body>
	<table id="tb_title" border="3">
		<tr>
			<td id="title">
				<a href="LifeManagement_DormitoryInformation.jsp" >宿舍信息</a>
			</td>
			
			<td id="title">
				<a href="LifeManagement_DormitoryAdminInformation.jsp" >宿管信息</a>
			</td>
			
			<td id="title">
				<a href="LifeManagement_BookInformation.jsp">书籍信息</a>
			</td>
		</tr>
	</table>
		<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td width="33%">职工号</td>
				<td width="33%">姓名</td>
				<td width="30%">性别</td>
				<td><img src="add.png" width="30" height="40" onclick=openWindow("AddDormitoryAdminInformation.jsp","900","580")></img></td>
			</tr>
			
			<%
					String UserName = (String)session.getAttribute("UserName");
				    ResultSet DormitoryAdminInformation_rs = null;
				    DormitoryAdminInformation_rs = student.getAllDormitoryAdminInformation();

				    while(DormitoryAdminInformation_rs.next()){
				    	String DA_ID=DormitoryAdminInformation_rs.getString("DA_ID");
				        String DA_Name=DormitoryAdminInformation_rs.getString("DA_Name");
				        String DA_Gender=DormitoryAdminInformation_rs.getString("DA_Gender");
				        
				        
				    	
				%>
					<tr class="fonthcss" align="center" height="50">
						<td ><%=DA_ID %></td>
						<td ><%=DA_Name %></td>
						<td ><%=DA_Gender %></td>
						
					</tr>
				<%
				    }
				%>
		</table>
	</body>
	<script "text/javescript">
	function openWindow(url,w,h)
	{
		var left=(window.screen.width-w)/2-10;
		var top=(window.screen.height-h)/2-35;
		window.open(url, "", "height="+h+", width="+w+",top="+top+",left="+left+", toolbar=0, titlebar=0,menubar=0, scrollbars=0, resizable=0, location=0, status=0");
	}
	</script>
</html>
