<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>商业银行信贷管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="img/favicon.ico">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script type="text/javascript" src="js/canvas-particle.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET-->
<script type="text/javascript">
	var msg = '${msg}';
	if (msg != '') {
		alert(msg);
	}
	function adminlogin(){
		var username = $("#username").val();
		var password = $("#password").val();

	}
</script>
<script type="text/javascript">
		window.onload = function() {
		    //配置
		    var config = {
		        vx: 4,	//小球x轴速度,正为右，负为左
		        vy: 4,	//小球y轴速度
		        height: 2,	//小球高宽，其实为正方形，所以不宜太大
		        width: 2,
		        count: 200,		//点个数
		        color: "121, 162, 185", 	//点颜色
		        stroke: "130,255,255", 		//线条颜色
		        dist: 6000, 	//点吸附距离
		        e_dist: 20000, 	//鼠标吸附加速距离
		        max_conn: 10 	//点到点最大连接数
		    }
			
		    //调用
		    CanvasParticle(config);
		    var oBody = document.getElementById('mydiv');
		    oBody.style.height =document.documentElement.clientHeight+'px';
		}
	</script>
	<style>
		#mydiv{
		background:url(../img/bg.jpg) no-repeat;
		background-size:100% 100%;
		}
		.name{
			background:url(../img/logo.png) no-repeat;
			padding-left:45px;
		}
		.pass{
			background:url(../img/password.png) no-repeat;
			padding-left:45px;
		}
		.line{
			background:url(../img/line.png) no-repeat 1px 8px;
			padding-left:45px;
		}
	</style>
</head>
<body id="mydiv">
	<div class="container">
		<form class="form-signin" action="commonAction_login" method="post">
			<h2 class="form-signin-heading">商业银行信贷管理系统</h2>
			<div class="login-wrap">
				<div class="name">
					<input type="text" name="username" class="form-control" id="username" placeholder="用户名" autofocus>
				</div>
				<div class="pass">
					<input type="password" name="pwd" class="form-control" id="password" placeholder="密码">
				</div>
				<div class="line">
					<select name="role" class="form-control m-bot15">
					<option value="信贷员">信贷员</option>
					<option value="信贷审批专员">信贷审批专员</option>
					<option value="信贷综合管理员">信贷综合管理员</option>
					<option value="信贷风险评估员">信贷风险评估员</option>
					<option value="超级管理员">超级管理员</option>
				</select>
				</div>
				<button class="btn btn-lg btn-login btn-block" type="submit">登陆</button>
			</div>
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
