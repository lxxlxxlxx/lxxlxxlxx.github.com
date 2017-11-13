<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<ul class="sidebar-menu" id="nav-accordion">
			<c:if test="${roler=='信贷员' }">
				<li class="sub-menu">
					<a href="javascript:;" class="active"> 
						<i class="fa fa-laptop"></i>
						<span>客户信息管理</span> 
						<span class="label label-success span-sidebar">1</span>
					</a>
					<ul class="sub">
						<li class="active"><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${roler=='信贷综合管理员' }">
				<li class="sub-menu">
					<a href="javascript:;" class="active"> 
						<i class="fa fa-laptop"></i>
						<span>贷款信息管理</span> 
						<span class="label label-success span-sidebar">5</span>
					</a>
					<ul class="sub">
						<li class="active"><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
						<li><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
						<li><a href="<%=basePath%>zcpgAction_findZcpgAll">担保资产信息管理</a></li>
						<li><a href="<%=basePath%>skAction_findSkAll">收款管理</a></li>
						<li><a href="<%=basePath%>ckAction_findCkAll">逾期催款管理</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${roler=='信贷审批专员' || roler=='信贷风险评估员'}">
				<li class="sub-menu">
					<a href="javascript:;" class="active"> 
						<i class="fa fa-laptop"></i>
						<span>贷款信息管理</span> 
						<span class="label label-success span-sidebar">2</span>
					</a>
					<ul class="sub">
						<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
						<li class="active"><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${roler=='超级管理员'}">

				<li class="sub-menu">
					<a href="javascript:;" class="active"> 
						<i class="fa fa-laptop"></i>
						<span>贷款信息管理</span> 
						<span class="label label-success span-sidebar">5</span>
					</a>
					<ul class="sub">
						<li class="active"><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
						<li><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
						<li><a href="<%=basePath%>zcpgAction_findZcpgAll">担保资产信息管理</a></li>
						<li><a href="<%=basePath%>skAction_findSkAll">收款管理</a></li>
						<li><a href="<%=basePath%>ckAction_findCkAll">逾期催款管理</a></li>
					</ul>
				</li>

				<li class="sub-menu">
					<a href="javascript:;" > 
						<i class="fa fa-laptop"></i>
						<span>用户角色管理</span> 
						<span class="label label-success span-sidebar">1</span>
					</a>
					<ul class="sub">
						<li ><a href="<%=basePath%>commonAction_findAll">用户角色管理</a></li>
					</ul>
				</li>
			</c:if>
		</ul>
	</div>
	</header> <aside>
	<div id="sidebar" class="nav-collapse">
		<ul class="sidebar-menu" id="nav-accordion">
			<li class="sub-menu">
				<a href="javascript:;" class="active"> 
					<i class="fa fa-laptop"></i>
					<span>客户信息管理</span> 
					<span class="label label-success span-sidebar">1</span>
				</a>
				<ul class="sub">
					<li class="active"><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
				</ul>
			</li>
		</ul>
	</div>
	</aside>
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
                  <div class="col-lg-8">
                     <section class="panel">
                        <header class="panel-heading">
                           <span class="label label-primary">
                           		<c:if test="${kh.id==0 }">
                           			添加客户信息
                           		</c:if>
                           		<c:if test="${kh.id!=0 }">
                           			编辑客户信息
                           		</c:if>
                           </span>
                        </header>
                        <div class="panel-body">
                           <div class="form">
                              <form class="cmxform form-horizontal tasi-form" method="post" action="<%=basePath%>khAction_addOrUpdateKh">
                                 <input name="khobj.id" type="hidden" value="${kh.id }">
                                 <input name="khobj.status" type="hidden" value="${kh.status }">
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">客户名称：</label>
                                    <div class="col-lg-9">
                                    	<input class="form-control" name="khobj.name" type="text" value="${kh.name }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">性别：</label>
                                    <div class="col-lg-9">
                                    	<select name="khobj.sex" class="form-control m-bot15">
                                       		<option value="男" <c:if test="${kh.sex=='男' }">selected="selected"</c:if>>男</option>
                                       		<option value="女" <c:if test="${kh.sex=='女' }">selected="selected"</c:if>>女</option>
										</select>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">年龄：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.age" type="text" value="${kh.age }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">出生年月：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.birthDate" type="text" value="${kh.birthDate }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">身份证号：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.idCardNumber" type="text" value="${kh.idCardNumber }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                 	<label class="control-label col-lg-3">身份证地址：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.idCardAddress" type="text" value="${kh.idCardAddress }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">婚姻状况：</label>
                                    <div class="col-lg-9">
                                    	<select name="khobj.maritalStatus" class="form-control m-bot15">
                                       		<option value="已婚" <c:if test="${kh.maritalStatus=='已婚' }">selected="selected"</c:if>>已婚</option>
                                       		<option value="未婚" <c:if test="${kh.maritalStatus=='未婚' }">selected="selected"</c:if>>未婚</option>
										</select>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">发证机关：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.issuingAuthority" type="text" value="${kh.issuingAuthority }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">学历：</label>
                                    <div class="col-lg-9">
                                       	<select name="khobj.education" class="form-control m-bot15">
                                       		<option value="博士" <c:if test="${kh.education=='博士' }">selected="selected"</c:if>>博士</option>
                                       		<option value="硕士" <c:if test="${kh.education=='硕士' }">selected="selected"</c:if>>硕士</option>
                                       		<option value="本科" <c:if test="${kh.education=='本科' }">selected="selected"</c:if>>本科</option>
                                       		<option value="专科" <c:if test="${kh.education=='专科' }">selected="selected"</c:if>>专科</option>
										</select>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">联系电话：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.tel" type="text" value="${kh.tel }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">邮箱：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.email" type="text" value="${kh.email }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">直系亲属联系人：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.immediateFamily" type="text" value="${kh.immediateFamily }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">户口变更信息：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.accountChange" type="text" value="${kh.accountChange }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">公司名称：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.company" type="text" value="${kh.company }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">公司地址：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.companyAddress" type="text" value="${kh.companyAddress }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">工作时间：</label>
                                    <div class="col-lg-9">
                                       	<input class="form-control" name="khobj.workingHours" type="text" value="${kh.workingHours }"/>
                                    </div>
                                 </div>
                                 <div class="form-group col-lg-8">
                                    <label class="control-label col-lg-3">客户类型：</label>
                                    <div class="col-lg-9">
                                    	<select name="khobj.type" class="form-control m-bot15">
                                       		<option value="个人" <c:if test="${kh.type=='个人' }">selected="selected"</c:if>>个人</option>
                                       		<option value="单位" <c:if test="${kh.type=='单位' }">selected="selected"</c:if>>单位</option>
										</select>
                                    </div>
                                 </div>
                                 <div class="form-group">
                                    <div class="col-lg-offset-5 col-lg-10">
                                       <button class="btn btn-primary" type="submit">保存</button>
                                       <button class="btn btn-default" type="button" onclick="history.go(-1)">取消</button>
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
</body>
</html>
