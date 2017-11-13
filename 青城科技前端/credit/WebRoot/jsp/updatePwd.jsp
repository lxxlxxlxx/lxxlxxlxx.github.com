<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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

<link rel="shortcut icon" href="img/favicon.ico">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">

<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.dcjqaccordion.2.7.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common-scripts.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.scrollTo.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/respond.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.validate.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET-->
</head>

<body>
	<section id="container"> <header class="header white-bg">
	<div class="sidebar-toggle-box">
		<div data-placement="right" class="fa fa-bars tooltips"></div>
	</div>
	<a href="<%=basePath%>index.jsp" class="logo">商业银行信贷管理系统</a>
	<div class="top-nav ">
		<ul class="nav pull-right top-menu">
			<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="username">&nbsp;&nbsp;${roler }&nbsp;&nbsp;${uname}&nbsp;&nbsp;</span><b
					class="caret"></b> </a>
				<ul class="dropdown-menu extended logout">
					<li class="log-arrow-up"></li>
					<li><a href="<%=basePath%>jsp/updatePwd.jsp"><i class="fa fa-key"></i>修改密码</a></li>
					<li><a href="<%=basePath%>commonAction_logout"><i class="fa fa-key"></i>注销</a></li>
				</ul></li>
		</ul>
	</div>
	</header> <aside>
			<div id="sidebar" class="nav-collapse">
		<ul class="sidebar-menu" id="nav-accordion">
			<c:if test="${roler=='信贷员' }">
				<li class="sub-menu">
					<a href="javascript:;"> 
						<i class="fa fa-laptop"></i>
						<span>客户信息管理</span> 
						<span class="label label-success span-sidebar">1</span>
					</a>
					<ul class="sub">
						<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${roler=='信贷综合管理员' }">
				<li class="sub-menu">
					<a href="javascript:;"> 
						<i class="fa fa-laptop"></i>
						<span>贷款信息管理</span> 
						<span class="label label-success span-sidebar">5</span>
					</a>
					<ul class="sub">
						<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
						<li><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
						<li><a href="<%=basePath%>zcpgAction_findZcpgAll">担保资产信息管理</a></li>
						<li><a href="<%=basePath%>skAction_findSkAll">收款管理</a></li>
						<li><a href="<%=basePath%>ckAction_findCkAll">逾期催款管理</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${roler=='信贷审批专员' || roler=='信贷风险评估员'}">
				<li class="sub-menu">
					<a href="javascript:;"> 
						<i class="fa fa-laptop"></i>
						<span>贷款信息管理</span> 
						<span class="label label-success span-sidebar">2</span>
					</a>
					<ul class="sub">
						<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
						<li><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
					</ul>
				</li>
			</c:if>
		</ul>
	</div>
	</aside>
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
                  <div class="col-lg-8">
                     <section class="panel">
                        <header class="panel-heading">
                           <span class="label label-primary">修改密码</span>
                        </header>
                        <div class="panel-body">
                           <div class="form">
                              <form class="cmxform form-horizontal tasi-form" id="updatePwdForm" method="post" action="<%=basePath%>commonAction_updatePwd">
                                 <div class="form-group ">
                                    <label for="username" class="control-label col-lg-2">原密码：</label>
                                    <div class="col-lg-10">
                                       <input class="form-control" name="oldpwd" type="password">
                                    </div>
                                 </div>
                                 <div class="form-group ">
                                    <label for="password" class="control-label col-lg-2">新密码：</label>
                                    <div class="col-lg-10">
                                       <input class="form-control" id="newpwd" name="newpwd" type="password">
                                    </div>
                                 </div>
                                 <div class="form-group ">
                                    <label for="confirm_password" class="control-label col-lg-2">确认密码</label>
                                    <div class="col-lg-10">
                                       <input class="form-control" name="confirm_password" type="password">
                                    </div>
                                 </div>
                                 <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                       <button class="btn btn-primary" type="submit">保存</button>
                                       <button class="btn btn-default" type="button">取消</button>
                                    </div>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </section>
                  </div>
               </div>
		</section>
	</section>
</section>
<script type="text/javascript">
    $().ready(function () {
        $("#updatePwdForm").validate({
            rules: {
                oldpwd: {
                    required: true,
                },
                newpwd: {
                    required: true,
                },
                confirm_password: {
                    required: true,
                    equalTo: "#newpwd"
                }
            },
            messages: {
                oldpwd: {
                    required: "请输入旧密码",
                },
                newpwd: {
                    required: "请输入新密码",
                },
                confirm_password: {
                    required: "请输入确认密码",
                    equalTo: "请输入相同的密码"
                }
            }
        });
    });
</script>
</body>
</html>
