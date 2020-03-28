<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="teacher" class="com.ch11.teacher" scope="page"></jsp:useBean>
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
				<td width="11.1%">请假编号</td>
				<td width="11.1%">姓名</td>
				<td width="11.1%">学号</td>
				<td width="11.1%">开始日期</td>
				<td width="11.1%">结束日期</td>
				<td width="11.1%">请假类型</td>
				<td width="11.1%">请假原因</td>
				<td width="11.1%">审核状态</td>
				<td width="11.1%">操作</td>
			</tr>
			
			<%
					String T_ID = (String)session.getAttribute("UserName");
				    ResultSet Leave_rs = null;
				    Leave_rs = teacher.getAskForLeaveInformation(T_ID);
				    response.setCharacterEncoding("utf-8");

				    while(Leave_rs.next()){
				    	int A_ID = Leave_rs.getInt("A_ID");
					    String S_ID = Leave_rs.getString("S_ID");
					    String S_Name = Leave_rs.getString("S_Name");				    	
					    String BeginDate = Leave_rs.getString("BeginDate");
					    String EndDate = Leave_rs.getString("EndDate");
					    String Leave_Type = Leave_rs.getString("Leave_Type");
					    String Reason = Leave_rs.getString("Reason");
					    String Authorization = Leave_rs.getString("Authorization");
					    if(Authorization==null)Authorization="未批准";
				    	
				%>
				<tr class="fonthcss" align="center" height="50">
					<td width="11.1%"><%= A_ID%></td>
					<td width="11.1%"><%= S_Name%></td>
					<td width="11.1%"><%= S_ID%></td>
					<td width="11.1%"><%= BeginDate%></td>
					<td width="11.1%"><%= EndDate%></td>
					<td width="11.1%"><%= Leave_Type%></td>
					<td width="11.1%"><%= Reason%></td>
					<td width="11.1%"><%= Authorization%></td>
					<td width="11.1%">
				<%
					if(Authorization.equals("未批准")){
				%>
					<a href="changeauthorizationY.jsp?A_ID=<%=A_ID%>"><button>批准</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="changeauthorizationN.jsp?A_ID=<%=A_ID%>"><button>不批准</button></a>	
				<%
					}
					else {
				%>		
					不可操作
				<%
					}
				%>		
					</td>
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
