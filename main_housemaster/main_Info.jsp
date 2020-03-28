<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style type="text/css">

			*{
				margin: 0;
			}
			#main{
				width:95rem;
				height:50rem;
			}
			#left{
				width: 5%;
				height:100%;
				background-color:#eeeeee;
				float:left;
			}
			#content{
				width:90rem;
				height:100%;
				margin-top:4.9rem;
				float:left;
			}
			#if_content{
				frameborder:0;
				height:100%;
				width:100%;
			}
</style>
</head>
<body>
<div id="head"> 
	<jsp:include page="head.jsp"></jsp:include>
</div>
	
<div id="main">
	<div id="left">
		<jsp:include page="left_housematster.jsp"></jsp:include>
	</div>
	
	<div id="content">
		<iframe id="if_content" src="BasicInformation.jsp"></iframe>
	</div>
</div>	
</body>
</html>