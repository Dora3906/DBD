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
	.fontbtcss{
		font-family:"微软雅黑";
		font-size: 18px;
		color:#000000;
	}
	.fonthcss{
		font-family:"微软雅黑";
		font-size: 20px;
		color:#393939;
	}
	.table{
		margin-top: 9rem;
	}
	</style>
	<body>
		<h1 align="center">发起借书</h1>
		<form>
			<table width="90%" align="center" border=0 cellpadding="0" cellspacing="0" >
			<tr class="fontbtcss" align="center" height="50">
				<td><b>书号</b></td>
				<td><b>书名</b></td>
				<td><b>作者</b></td>
				<td><b>类型</b></td>
				<td><b>剩余本数</b></td>
				<td><b>学生号</b></td>
				<td><b>操作</b></td>
			</tr>
			<hr width="90%" align="center"/>
			<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Books_rs = null;
				    Books_rs = student.getAllBooksInformation(S_ID);

				    while(Books_rs.next()){
				    	String B_ID = Books_rs.getString("B_ID");
				        String B_Name = Books_rs.getString("B_Name");
				        String Author = Books_rs.getString("Author");
				        String B_Type = Books_rs.getString("B_Type");
				        int Amount = Books_rs.getInt("Amount");
				    	
				    	
				%>
					<tr align="center" height="40">
						<td><%=B_ID %></td>
						<td><%=B_Name %></td>
						<td><%=Author %></td>
						<td><%=B_Type %></td>
						<td><%=Amount %></td>
						<td><%=S_ID %></td>
						<td><a href="Borrow_Check.jsp?B_ID=<%=B_ID%>&Amount=<%=Amount %>"><input type="button" value="借阅"  class="sui-btn btn-bordered"></a></td>
					</tr>
				<%
				    }
				%>
		</table>
		</form>
	</body>
</html>
