<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
			*{
				margin: 0;
			}
			#left{
				width: 5rem;
				height: 50rem;
			}
			.icon{
				text-align:center;
			}

			.icon img{
				width: 3rem;
				height: 3rem;
			}
			
			#title{
				width:5rem;
				height:2rem;
				text-align:center;
				font-size:13px;
			}
			
			#none{
				width: 2rem;
				height: 2rem;
			}
		</style>
</head>
<body>
	<div id="none"></div>
	<div id="none"></div>
	<div id="none"></div>
	<div id="left">
			<table id="tb" border="0">

				<tr>
					<td class="icon">
						<img src="student.png"/>
					</td>
				</tr>
				
				<tr>
					<td id="title"><a href="main_StudentManagement.jsp">学生管理</a></td>
				</tr>
				
				<tr>
					<td id="none">
						
					</td>
				</tr>
				
				<tr>
					<td class="icon">
						<img src="school.png" />
					</td>
				</tr>
				
				<tr>
					<td id="title"><a href="main_SchoolManagement.jsp">学校管理</a></td>
				</tr>
				
				<tr>
					<td id="none">
						
					</td>
				</tr>
				
				<tr>
					<td class="icon">
						<img src="life.png" />
					</td>
				</tr>
				
				<tr>
					<td id="title"><a href="main_LifeManagement.jsp">生活管理</a> </td>
				</tr>
				
				<tr>
					<td id="none">
						
					</td>
				</tr>
				
				<tr>
					<td class="icon">
						<img src="search.png" />
					</td>
				</tr>
				
				<tr>
					<td id="title"><a href="main_SearchInformation.jsp">信息查询</a> </td>
				</tr>
				
				<tr>
					<td id="none">
						
					</td>
				</tr>
				
				<tr>
					<td class="icon">
						<img src="user.png" />
					</td>
				</tr>
				
				<tr>
					<td id="title"><a href="main_UserManagement.jsp">用户管理</a> </td>
				</tr>
				
				
	
	
				<tr>
					<td align="center" >
						<a href="/DBD/login/login.jsp">更换用户</a>
					</td>
				</tr>
			</table>
		</div>
</body>
</html>