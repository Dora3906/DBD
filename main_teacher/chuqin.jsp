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
	.fontdbcss{
		font-family:"微软雅黑";
		font-size: 15px;
		color:#FFFFFF;
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
	.select{
		height:25px;
	}
	</style>
	<script type="text/javascript">
	window.onload = function()
	{
		var cur;
		var tr = document.getElementsByTagName("tr");
		for(var i=2;i<tr.length;i++)
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
	<form action="search_chuqin.jsp" method="post" name="seleted1">
		<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td colspan="10">
				课程名：
					<select name="selectcourse" class="select">
					<%
						String T_ID = (String)session.getAttribute("UserName");
						System.out.print(T_ID);
					    ResultSet Teacher_rs = null;
					    Teacher_rs = teacher.getBasicInformation(T_ID);
					    String nianjihao;
					    double chuqinlv=0,ying=0,yi=0;
	
					    while(Teacher_rs.next()){
					    String C_Name = Teacher_rs.getString("C_Name");
					%>
						<option value="<%=C_Name %>"><%=C_Name %></option>
					<%
					    }
					%>
					</select>
				<input type="submit" value="查询"></td>
			</tr>
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td width="10%">学生号</td>
				<td width="10%">学生姓名</td>
				<td width="10%">学院名</td>
				<td width="10%">班级名</td>
				<td width="10%">课程号</td>			
				<td width="10%">课程名</td>
				<td width="10%">应到次数</td>
				<td width="10%">出勤次数</td>
				<td width="10%">出勤率</td>
				<td width="10%">操作</td>
			</tr>
			
			    <%
				    Teacher_rs = teacher.getgrade(T_ID);

		  		 	while(Teacher_rs.next()){
		  		 		String S_ID = Teacher_rs.getString("S_ID");
					    String S_Name = Teacher_rs.getString("S_Name");
					    String Depa_Name = Teacher_rs.getString("Depa_Name");
					    String Cla_Name = Teacher_rs.getString("Cla_Name");
					    String C_ID = Teacher_rs.getString("C_ID");
					    String C_Name = Teacher_rs.getString("C_Name");
					    String Attendance_Should = Teacher_rs.getString("Attendance_Should");
					    String Attendance_Already = Teacher_rs.getString("Attendance_Already");
					    String SC_Score = Teacher_rs.getString("SC_Score");
					    if(Attendance_Should==null)Attendance_Should="未录入";
					    else ying=Double.parseDouble(Attendance_Should);
					    if(Attendance_Already==null)Attendance_Already="未录入";
					    else yi=Double.parseDouble(Attendance_Already);
					    if(Attendance_Should!=null&&Attendance_Already!=null)
					    {
					    	chuqinlv=yi/ying;
							chuqinlv = ((double)Math.round(chuqinlv*1000))/1000;
							chuqinlv=chuqinlv*100;
					    }

				%>
					<tr class="fonthcss" align="center" height="50">
						<td width="10%"><%=S_ID %></td>
						<td width="10%"><%=S_Name %></td>
						<td width="10%"><%=Depa_Name %></td>
						<td width="10%">
						<% 
							StringBuffer ClassName=new StringBuffer(S_ID.substring(0,2));
							ClassName.append(Cla_Name);
						%>
						<%=ClassName %>
						</td>
						<td width="10%"><%=C_ID %></td>
						<td width="10%"><%=C_Name %></td>
						<td width="10%"><%=Attendance_Should %></td>
						<td width="10%"><%=Attendance_Already %></td>
						<%
							if(Attendance_Should=="未录入"||Attendance_Already=="未录入"){
						%>
						<td width="11.1%">未录入</td>
						<%
							}
							else{
						%>
						<td width="11.1%"><%=chuqinlv+"%" %></td>
						<%
						}
						%>
						<%
						if(Attendance_Should=="未录入"||Attendance_Already=="未录入"){
						%>
						<td width="10%"><a href="chuqinxiugai.jsp?S_ID=<%=S_ID %>&C_ID=<%=C_ID %>&C_Name=<%=C_Name %>"><input type="button" value="录入"></a></td>
						<%
							}
							else{
						%>
						<td width="10%"><a href="chuqinxiugai.jsp?S_ID=<%=S_ID %>&C_ID=<%=C_ID %>&C_Name=<%=C_Name %>"><input type="button" value="修改"></a></td>
						<%
							}
						%>
					</tr>
				<%
				    }
				%>
		</table>
	  </form>
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
