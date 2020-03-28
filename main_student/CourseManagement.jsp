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
	</style>
	<script type="text/javascript">
	window.onload = function()
	{
		var cur;
		var tr = document.getElementsByTagName("tr");
		for(var i=1;i<tr.length;i++)
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
	<body>
		<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td width="15%">课程号</td>
				<td width="15%">课程名</td>
				<td width="15%">所属学院</td>
				<td width="15%">专业号</td>
				<td width="15%">专业名</td>
				<td width="15%">授教老师</td>
				<td ><img src="Add.png" width="30" height="40" onclick=openWindow("AddCourseInformation.jsp","900","550")></img></td>
			</tr>
			
			<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Course_rs = null;
				    Course_rs = student.getS_CourseInformation(S_ID);

				    while(Course_rs.next()){
				    	String C_ID = Course_rs.getString("C_ID");
				        String C_Name = Course_rs.getString("C_Name");
				        String C_Depa_Name = Course_rs.getString("Depa_Name");
				        String Spe_ID = Course_rs.getString("Spe_ID");
				        String Spe_Name=Course_rs.getString("Spe_Name");
				        String C_T_Name = Course_rs.getString("T_Name");
				    	
				    	
				%>
					<tr class="fonthcss" align="center" height="50">
						<td width="14.3%"><%=C_ID %></td>
						<td width="14.3%"><%=C_Name %></td>
						<td width="14.3%"><%=C_Depa_Name %></td>
						<td width="14.3%"><%=Spe_ID %></td>
						<td width="14.3%"><%=Spe_Name %></td>
						<td width="14.3%"><%=C_T_Name %></td>
						<td></td>
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
