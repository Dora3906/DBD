<%@page import="com.ch11.db"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.sql.ResultSet"%>
   <link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
</head>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<style>
	#img{
		font-family:"微软雅黑";
		font-size: 18px;
		float:right;
		margin-right:2.4rem;
	}
	.a1{
		font-family:"微软雅黑";
		font-size: 16px;
		color: #FFFFFF;
		
	}
	.a2{
		font-family:"微软雅黑";
		font-size: 16px;
		color: #FFFFFF
	}
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
		function check(){
			var level = document.getElementById("level").value;
			var id = document.getElementById("Dorm_ID").value;
			if (id ==="" || id === null || level === "" || level === null)
			{
				alert("宿舍号或卫生等级不能为空！");
			}
			else if(parseInt(level) > 5 || parseInt(level) < 1 )
			{
				alert("卫生等级不符合规范！");
			}
			else
				life_form.action="Handle";
		}
	</script>
	<body>
	<form name="life_form" method="get" onsubmit="check()">
	<table border="0" width="100%" border=0 cellpadding="0" cellspacing="0">
	<tr bgcolor="#393939" height="50px">
	<td colspan="7" style="padding-left:10px">
	<label class="a1" for="inputEmail" class="control-label">宿舍号(例如：110826013):</label>&nbsp;
 	<input id="Dorm_ID" name="Dorm_ID" type="text" class="input-medium search-query">&nbsp;&nbsp;&nbsp;
  	<label class="a2" for="inputPassword" class="control-label">卫生等级(1-5):</label>&nbsp;
  	<input id="level" name="Level" type="text" class="input-medium search-query">&nbsp;&nbsp;&nbsp;
  	<button type="submit" class="sui-btn btn-primary btn-large">打分</button>
  	<a class="sui-btn btn-xlarge" id="img" width="30" height="40" onclick=openWindow("AddCourseInformation.jsp","900","550")>学生住宿情况</a>
  	</td>
  	<tr>
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
				<td width="12.3%">卫生打分：
				</td>
			</tr>
	<%
	String userName="sa";
	//数据库密码
	String userPassword="123456";
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
	strSql="select Students_Dormitories.Dorm_ID,Students_Dormitories.S_ID,Students.S_Name,Students_Dormitories.WaterRate,Students_Dormitories.Electricity,DormitoryAdministrators.DA_Name,Dormitories.Level from Students_Dormitories,Students,Dormitories,DormitoryAdministrators where Students.S_ID=Students_Dormitories.S_ID and Students_Dormitories.Dorm_ID=Dormitories.Dorm_ID and Dormitories.DA_ID=dbo.DormitoryAdministrators.DA_ID and DormitoryAdministrators.DA_ID=";
    strSql=strSql +"'"+Username+"'"; 
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
	    	String C_ID = rs.getString("Dorm_ID");
	        String C_Name = rs.getString("S_ID");
	        String C_Depa_Name = rs.getString("S_Name");
	        String Spe_ID = rs.getString("WaterRate");
	        String Spe_Name=rs.getString("Electricity");
	        String C_T_Name = rs.getString("DA_Name");
	        String Level = rs.getString("Level");
	    	
	    	
	%>
		<tr class="fonthcss" align="center" height="50">
			<td width="12.3%"><%=C_ID %></td>
			<td width="12.3%"><%=C_Name %></td>
			<td width="12.3%"><%=C_Depa_Name %></td>
			<td width="12.3%"><%=Spe_ID %></td>
			<td width="12.3%"><%=Spe_Name %></td>
			<td width="12.3%"><%=C_T_Name %></td>
			<td width="12%"><%=Level %></td>
			
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
