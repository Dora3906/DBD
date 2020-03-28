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
				<td width="10%">书号</td>
				<td width="10%">书名</td>
				<td width="10%">作者</td>
				<td width="10%">类型</td>
				<td width="10%">学生号</td>
				<td width="10%">借书时间</td>
				<td width="10%">归还时间</td>
				<td width="10%"><img src="Add.png" width="30" height="40" onclick=openWindow("Borrow.jsp","1100","500")></img></td>
			</tr>
			
			<%
					String S_ID = (String)session.getAttribute("UserName");
				    ResultSet Borrow_Books_rs = null;
				    Borrow_Books_rs = student.getBorrowBooksInformation(S_ID);

				    while(Borrow_Books_rs.next()){
				    	String B_ID = Borrow_Books_rs.getString("B_ID");
				        String B_Name = Borrow_Books_rs.getString("B_Name");
				        String Author = Borrow_Books_rs.getString("Author");
				        String B_Type = Borrow_Books_rs.getString("B_Type");
				        int Amount = Borrow_Books_rs.getInt("Amount");
				        String BorrowDate = Borrow_Books_rs.getString("BorrowDate");
				        String ReturnDate = Borrow_Books_rs.getString("ReturnDate");
				    	
				    	
				%>
						<tr class="fonthcss" align="center" height="50">
							<td width="10%"><%=B_ID %></td>
							<td width="10%"><%=B_Name %></td>
							<td width="10%"><%=Author %></td>
							<td width="10%"><%=B_Type %></td>
							<td width="10%"><%=S_ID %></td>
							<td width="10%"><%=BorrowDate %></td>
							<td width="10%"><%=ReturnDate %></td>
							<td width="10%"><a href="deletebook.jsp?B_ID=<%=B_ID %>&Amount=<%=Amount %>"><button>归还</button></a></td>
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
