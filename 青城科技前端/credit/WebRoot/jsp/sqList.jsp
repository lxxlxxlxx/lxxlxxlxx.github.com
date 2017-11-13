<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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

<link rel="shortcut icon" href="<%=basePath%>img/favicon.ico">
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/bootstrap-reset.css" rel="stylesheet">
<link href="<%=basePath%>assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="<%=basePath%>css/style.css" rel="stylesheet">
<link href="<%=basePath%>css/style-responsive.css" rel="stylesheet">

<script src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath%>js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=basePath%>js/common-scripts.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
<script src="<%=basePath%>js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS -->
<script src="<%=basePath%>js/respond.min.js" ></script><!-- RESPOND JS -->
<script language="javascript" src="<%=basePath%>assets/advanced-datatable/media/js/jquery.dataTables.js"></script><!-- ADVANCE DATATABLE JS -->
<script src="<%=basePath%>assets/data-tables/DT_bootstrap.js"></script><!-- DATATABLE JS -->

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
					<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
					<li class="active"><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
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
					<li><a href="<%=basePath%>khAction_findKhAll">客户信息管理</a></li>
					<li class="active"><a href="<%=basePath%>sqAction_findSqAll">申请贷款管理</a></li>
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
	</aside>
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel">
			               <div class="panel-body">
			                 <a href="<%=basePath%>sqAction_beforeAddOrUpdateSq?sqid=" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp;&nbsp;添加贷款申请</a>
			               </div>
		             </section>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<!-- BEGIN PANEL SECTION --> 
	               <section class="panel">
                  <div class="panel-body">
                     <div class="adv-table">
                        <table  class="display table table-striped table-advance table-hover table-bordered" id="hidden-table-info">
                           <thead>
                              <tr>
                              	 <th>贷款申请ID</th>
                                 <th>用户id</th>
                                 <th>贷款类型</th>
								 <th>贷款性质</th>
								 <th>贷款抵押品</th>
								 <th>抵押品金额</th>
								 <th>贷款金额</th>
								 <th>申请日期</th>
								 <th>审批日期</th>
								 <th>合同贷款利率</th>
								 <th>还款利率</th>
								 <th>每期还款金额</th>
								 <th>审批状态</th>
								 <th>风险评估等级</th>
                                 <th>操作</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach items="${sqList }" var="obj">
                              	 <tr>
                              	 	 <td>${obj.id }</td>
	                                 <td>${obj.uid }</td>
	                                 <td>${obj.dkzl }</td>
	                                 <td>${obj.dkxz }</td>
	                                 <td>${obj.dkdyp }</td>
	                                 <td>${obj.dypje }</td>
	                                 <td>${obj.dkje }</td>
	                                 <td>${obj.sqrq }</td>
	                                 <td>${obj.sprq }</td>
	                                 <td>${obj.dkhtll }</td>
	                                 <td>${obj.hkfs }</td>
	                                 <td>${obj.mqhkje }</td>
	                                 <c:if test="${roler=='信贷审批专员' }">
	                                 	<c:if test="${obj.status=='未审核' }">
	                                 		<td><a href="<%=basePath%>sqAction_updateSqStatus?sqid=${obj.id}">${obj.status }</a></td>
	                                 	</c:if>
	                                 	<c:if test="${obj.status=='已审核' }">
	                                 		<td>${obj.status }</td>
	                                 	</c:if>
	                                 </c:if>
	                                 <c:if test="${roler!='信贷审批专员' }">
	                                 	<td>${obj.status }</td>
	                                 </c:if>
	                                 <c:if test="${roler=='信贷风险评估员' }">
	                                 	<td><a href="<%=basePath%>sqAction_updateSqFxpgdj?sqid=${obj.id}">${obj.fxpgdj }</a></td>
	                                 </c:if>
	                                 <c:if test="${roler!='信贷风险评估员' }">
	                                 	<td>${obj.fxpgdj }</td>
	                                 </c:if>
                               		 <td>
		                             	<a class="btn btn-primary btn-xs" href="<%=basePath%>sqAction_beforeAddOrUpdateSq?sqid=${obj.id}"><i class="fa fa-pencil"></i></a>
		                                <a class="btn btn-danger btn-xs" data-toggle="modal" data-id="1" href="#myModal2" onclick="deleteRow('${obj.id }');"><i class="fa fa-times"></i></a>
		                             </td>
	                              </tr>
                              </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </section>
				   <!-- END PANEL SECTION --> 
				</div>
			</div>
		</section>
	</section>
</section>
<div class="modal fade" id="myModal2" >
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="<%=basePath %>sqAction_deleteSq" method="post">
				<input type="hidden" name="sqDelId" id="delid" value="">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                 <h4 class="modal-title">确认删除该贷款申请信息？</h4>
	            </div>
	            <div class="modal-body">
	            	注意删除后将无法回复，请谨慎操作！！！
	            </div>
	        	<div class="modal-footer">
	        		<button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
	        		<button class="btn btn-warning" type="submit">删除</button>
	   			</div>
			</form>
        </div>
    </div>
</div>
<!-- BEGIN JS --> 
<script >
    function deleteRow(id){
    	$("#delid").val(id);
    }
</script>

<script >
	$(document).ready(function() {
        var oTable = $('#hidden-table-info').dataTable( {
	      "bFilter": false,"bLengthChange":false
        });
	});
</script>
<!-- END JS --> 
</body>
</html>
