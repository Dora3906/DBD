<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTf-8"%>
 <jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<style>
			*{
				margin: 0;
			}
			
			#register_content{
				margin-top:2rem;
				margin-left:31rem;
				position:absolute;	
				float:right;	
			}
			
			#text{
				background-color: #eaeaea;
				border: 0;
				width: 18rem;
				height: 3rem;
				font-size:18px;
				border-radius:4px;
			}	
			
			#register_btn{
				background-color: #5087fc;
				border: 0;
				width: 20rem;
				height: 3rem;
				border-radius: 0.5rem;
				margin-top: 3rem;
				font-size: 1.5rem;
				letter-spacing:4rem;
				color: #CCCCCC;
			}
			
			#login_btn{
				item-align:center;
				background-color: #47A0DB;
				border: 0;
				width: 18rem;
				height: 3rem;
				line-height: 3rem;
				border-radius: 0.5rem;
				margin-top: 3rem;
				font-size: 1.5rem;
				padding-left:2.4rem;
				letter-spacing:2rem;
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
				color: #FFFFFF;
			}
			
			#p1{
				font-family: "微软雅黑";
				font-size:1.5rem;
				letter-spacing:0.5rem;
				color: #FFFFFF;
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
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src='js/prefixfree.min.js'></script>
	<style class="cp-pen-styles">body {
	  background: radial-gradient(200% 100% at bottom center, #0070aa, #0b2570, #000035, #000);
	  background: radial-gradient(220% 105% at top center, #000 10%, #000035 40%, #0b2570 65%, #0070aa);
	  background-attachment: fixed;
	  overflow: hidden;
	}

	@keyframes rotate {
	  0% {
	    transform: perspective(400px) rotateZ(20deg) rotateX(-40deg) rotateY(0);
	  }
	  100% {
	    transform: perspective(400px) rotateZ(20deg) rotateX(-40deg) rotateY(-360deg);
	  }
	}
	.stars {
	  transform: perspective(500px);
	  transform-style: preserve-3d;
	  position: absolute;
	  bottom: 0;
	  perspective-origin: 50% 100%;
	  left: 50%;
	  animation: rotate 90s infinite linear;
	}

	.star {
	  width: 2px;
	  height: 2px;
	  background: #F7F7B6;
	  position: absolute;
	  top: 0;
	  left: 0;
	  transform-origin: 0 0 -300px;
	  transform: translate3d(0, 0, -300px);
	  backface-visibility: hidden;
	}
	</style>
</head>
<body>
	
	<div class="stars">
	</div>
			<div id="register_content">
				<form name="reg_form" method="post" onSubmit="check()">
					<table>
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
						<td align="center">
							<input type="submit" value="登录" id="login_btn" align="center"/>
						</td>
					</tr>
				</table>
				</form>
			</div>
	<script src='js/stopExecutionOnTimeout.js'></script>
	
	<script>
	$(document).ready(function () {
	    var stars = 800;
	    var $stars = $('.stars');
	    var r = 800;
	    for (var i = 0; i < stars; i++) {
	        if (window.CP.shouldStopExecution(1)) {
	            break;
	        }
	        var $star = $('<div/>').addClass('star');
	        $stars.append($star);
	    }
	    window.CP.exitedLoop(1);
	    $('.star').each(function () {
	        var cur = $(this);
	        var s = 0.2 + Math.random() * 1;
	        var curR = r + Math.random() * 300;
	        cur.css({
	            transformOrigin: '0 0 ' + curR + 'px',
	            transform: ' translate3d(0,0,-' + curR + 'px) rotateY(' + Math.random() * 360 + 'deg) rotateX(' + Math.random() * -50 + 'deg) scale(' + s + ',' + s + ')'
	        });
	    });
	});

	</script>
</body>
</html>