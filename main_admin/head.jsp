<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
			*{
				margin: 0 ;
			}
			.logo{
				margin-bottom:20px;
				height:3rem;
				width:4rem;
			}
			#head{
				background-color: #3d599b;
				opacity:0.9;
				height: 5rem;
				width: 100rem;
				text-align: left;
				position: fixed;
			}
			#head_title{
				font-size: 1.8rem;
				font-family: "黑体";
				line-height: 5rem;
				color: #FFFFFF;
				opacity:none;
			}
		</style>
		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src='js/prefixfree.min.js'></script>
	<style class="cp-pen-styles">

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
	<div id="head">
			<table>
				<tr>
					<td align="center">&nbsp;<img alt="" src="logo55.png" class="logo">&nbsp;&nbsp;
					</td>
					
					<td>
						<p id="head_title">学生基本信息管理系统</p>
					</td>
				</tr>
			</table>
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