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
				<a href="LifeManagement_BookInformation.jsp" >书籍信息</a>
			</td>
		</tr>
	</table>
		<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td width="7.14%">宿舍号</td>
				<td width="7.14%">学号</td>
				<td width="7.14%">姓名</td>
				<td width="7.14%">水费</td>
				<td width="7.14%">电费</td>
				<td width="7.14%">卫生等级</td>
				<td width="7.14%">负责人</td>
				
			</tr>
			
			<%
					String UserName = (String)session.getAttribute("UserName");
				    ResultSet DormitoryInformation_rs = null;
				    DormitoryInformation_rs = student.getAllDormitoryInformation();

				    while(DormitoryInformation_rs.next()){
				    	String Dorm_ID=DormitoryInformation_rs.getString("Dorm_ID");
				        String S_ID=DormitoryInformation_rs.getString("S_ID");
				        String S_Name=DormitoryInformation_rs.getString("S_Name");
				        float WaterRate = DormitoryInformation_rs.getFloat("WaterRate");
				        float Electricity = DormitoryInformation_rs.getFloat("Electricity");
				        String Level = DormitoryInformation_rs.getString("Level");
				        String DA_Name = DormitoryInformation_rs.getString("DA_Name");
				        
				    	
				%>
					<tr class="fonthcss" align="center" height="50">
						<td width="14.2%"><%=Dorm_ID %></td>
						<td width="14.2%"><%=S_ID %></td>
						<td width="14.2%"><%=S_Name %></td>
						<td width="14.2%"><%=WaterRate %></td>
						<td width="14.2%"><%=Electricity %></td>
						<td width="14.2%"><%=Level %></td>
						<td width="14.2%"><%=DA_Name %></td>
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
