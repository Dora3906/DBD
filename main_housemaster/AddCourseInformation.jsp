<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.ch11.db"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
 <jsp:useBean id="student" class="com.ch11.student" scope="page"></jsp:useBean>
 <link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
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
	
	<body bgcolor="#e6e6e6">
	<%int count=0; %>
		<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
			<tr class="fontbtcss" bgcolor="#393939" align="center" height="50">
				<td width="12.3%">宿舍号</td>
				<td width="12.3%">学生号</td>
				<!--宿舍管理员功能
	学生信息查询：查询学生的基本信息
学生宿舍信息管理：查询自身负责的宿舍，对宿舍评级处理；  -->
				<td width="12.3%">学生名</td>
				<td width="12.3%">水费</td>
				<td width="12.3%">电费</td>
				<td width="12%">负责人</td>
				<td width="12.3%">卫生打分</td>
			</tr>
	<%
	String userName="sa";
	//数据库密码
	String userPassword="143239";
    //数据库的URL，包括连接数据库所使用的编码格式
	String url="jdbc:sqlserver://localhost:1433;databaseName=BasicInformation";
	Connection conn = null;
	PreparedStatement ps= null;
	ResultSet rs= null;    	
	
	try {
        //1.加载驱动
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        System.out.println("加载驱动成功！");
    }catch(Exception e) {
        e.printStackTrace();
        System.out.println("加载驱动失败！");
    }
    try {  
        //2.连接
        conn=DriverManager.getConnection( url,userName,userPassword);
        System.out.println("连接数据库成功！");
    }catch(Exception e) {
        e.printStackTrace();
        System.out.println("连接数据库失败！");
    }
    
    db dd=new db();
	String Dorm_ID="";
	String Username=(String)session.getAttribute("UserName");
	String strSql="";
	strSql="select Students_Dormitories.Dorm_ID,Students_Dormitories.S_ID,Students.S_Name,Students_Dormitories.WaterRate,Students_Dormitories.Electricity,DormitoryAdministrators.DA_Name,Dormitories.Level from Students_Dormitories,Students,Dormitories,DormitoryAdministrators where Students.S_ID=Students_Dormitories.S_ID and Students_Dormitories.Dorm_ID=Dormitories.Dorm_ID and Dormitories.DA_ID=dbo.DormitoryAdministrators.DA_ID";
   // strSql=strSql +"'"+Username+"'"; 
    //System.out.print(strSql);
    try
	{
    	ps= conn.prepareStatement(strSql);
   	 	rs= ps.executeQuery();
   	 	}
   	 catch(Exception ex)
 	{
 		System.out.println(ex.toString());            
 	}
    
   	 while(rs.next()){
   		 count++;
	    	String C_ID = rs.getString("Dorm_ID");
	        String C_Name = rs.getString("S_ID");
	        String C_Depa_Name = rs.getString("S_Name");
	        String Spe_ID = rs.getString("WaterRate");
	        String Spe_Name=rs.getString("Electricity");
	        String C_T_Name = rs.getString("DA_Name");
	        String Level = rs.getString("Level");
	%>
	
		<tr class="fonthcss" align="center" height="50">
			<td width="12.3%" class ="sui-text-success"><%=C_ID %></td>
			<td width="12.3%"><%=C_Name %></td>
			<td width="12.3%"><%=C_Depa_Name %></td>
			<td width="12.3%" class ="sui-text-danger"><%=Spe_ID %></td>
			<td width="12.3%" class ="sui-text-warning"><%=Spe_Name %></td>
			<td width="12.3%"><%=C_T_Name %></td>
			<td width="12%" class ="sui-text-info"><%=Level %></td>
		</tr>
	<%
	    }
	%>
	<div class="sui-msg msg-large msg-default msg-notice" >
  <div class="msg-con">在住学生人数统计：<%=count %></div>
  <s class="msg-icon"></s>
</div>

	</body>
</html>
