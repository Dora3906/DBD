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
				<td width="20%">书号</td>
				<td width="20%">书名</td>
				<td width="20%">作者</td>
				<td width="20%">类型</td>
				<td width="17%">剩余本数</td>
				<td><img align="left" src="add.png" width="30" height="40" onclick=openWindow("AddBookInformation.jsp","900","580")></img></td>
			</tr>
			
			<%
					String UserName = (String)session.getAttribute("UserName");
				    ResultSet BookInformation_rs = null;
				    BookInformation_rs = student.getAllBookInformation();

				    while(BookInformation_rs.next()){
				    	String B_ID=BookInformation_rs.getString("B_ID");
				        String B_Name=BookInformation_rs.getString("B_Name");
				        String Author=BookInformation_rs.getString("Author");
				        String B_Type = BookInformation_rs.getString("B_Type");
				        int Amount = BookInformation_rs.getInt("Amount");
				        
				    	
				%>
					<tr class="fonthcss" align="center" height="50">
						<td ><%=B_ID %></td>
						<td ><%=B_Name %></td>
						<td ><%=Author %></td>
						<td ><%=B_Type %></td>
						<td ><%=Amount %></td>
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
