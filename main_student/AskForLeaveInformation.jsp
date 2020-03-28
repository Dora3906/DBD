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
				<td width="15%">请假编号</td>
				<td width="15%">开始日期</td>
				<td width="15%">结束日期</td>
				<td width="15%">请假类型</td>
				<td width="15%">请假原因</td>
				<td width="15%">审核状态</td>
				<td><img src="Add.png" width="30" height="40" onclick=openWindow("AskForLeave.jsp","900","550")></img></td>
			</tr>
			
			<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Leave_rs = null;
				    Leave_rs = student.getAskForLeaveInformation(S_ID);
				    response.setCharacterEncoding("utf-8");

				    while(Leave_rs.next()){
				    	int A_ID = Leave_rs.getInt("A_ID");
					    String BeginDate = Leave_rs.getString("BeginDate");
					    String EndDate = Leave_rs.getString("EndDate");
					    String Leave_Type = Leave_rs.getString("Leave_Type");
					    String Reason = Leave_rs.getString("Reason");
					    String Authorization = Leave_rs.getString("Authorization");
					    if(Authorization==null)Authorization="未批准";
				%>
				<tr class="fonthcss" align="center" height="50">
					<td width="10%"><%= A_ID%></td>
					<td width="10%"><%= BeginDate%></td>
					<td width="10%"><%= EndDate%></td>
					<td width="10%"><%= Leave_Type%></td>
					<td width="10%"><%= Reason%></td>
					<td width="10%"><%= Authorization%></td>
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
