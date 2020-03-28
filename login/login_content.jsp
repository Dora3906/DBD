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
			#register_bg{
				width:35rem ;
				height: 40rem;
				background-color: #FFFFFF;
				margin-left:31.5rem;
			}
			
			#register_content{
				margin-left: 3rem;		
			}
			
			#text{
				background-color: #eaeaea;
				border: 0;
				width: 28.5rem;
				height: 3rem;
				font-size:18px;
			}	
			
			#register_btn{
				background-color: #5087fc;
				border: 0;
				width: 28.5rem;
				height: 3rem;
				border-radius: 0.5rem;
				margin-top: 3rem;
				font-size: 1.5rem;
				letter-spacing:4rem;
				color: #CCCCCC;
			}
			
			#login_btn{
				background-color: #47A0DB;
				border: 0;
				width: 28.5rem;
				height: 3rem;
				border-radius: 0.5rem;
				margin-top: 3rem;
				font-size: 1.5rem;
				letter-spacing:8rem;
				color: #ffffff;
			}
			
			#logo{
				width:13rem;
				height:10rem;
			}
			
			#p{
				font-family: "微软雅黑";
				font-size: 1.5rem;
				margin-top:0.8rem;
			}
			
			#p1{
				font-family: "微软雅黑";
				font-size:1.5rem;
				letter-spacing:0.5rem;
			}
			
			#p2{
				font-family: "微软雅黑";
				font-size:1.1rem;
				letter-spacing:1rem;
			}
		</style>
		
<script language="javascript">
	function check()
	{
		if(reg_form.UserName.value.length>11)
		{//判断用户名是否为空
			alert("学号不能超过11位");
			reg_form.UserName.focus();
		}
		else if(reg_form.UserName.value == "")
		{//判断用户名是否为空
			alert("用户名不能为空！");
			reg_form.UserName.focus();
		}
		else if(reg_form.UserPassword.value == "")
		{//判断密码是否为空
			alert("用户密码不能为空！");
			reg_form.UserPassword.focus();
		}
		else
		{
			//设置跳转目的页面
			reg_form.action="login_check.jsp";
		}
	}
</script>
</head>
<body>
<div id="register_bg">
			<div id="register_content">
				<form name="reg_form" method="post" onSubmit="check()">
					<table>
					<tr>
						<td>
							<img id="logo" src="logo.png"/>
						</td>
					</tr>
					
					<tr>
						<td id="p1">
							<p>你好！让我们开始吧</p>
						</td>
					</tr>
					
					<tr>
						<td>
							<p id="p">用户名/账号</p>
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="text" id="text" name="UserName"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<p id="p">密码</p>
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="password" id="text" name="UserPassword"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="submit" value="&nbsp;登录" id="login_btn"/>
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
</body>
</html>