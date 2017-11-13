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
	</aside>
	<section id="main-content">
		<section class="wrapper">
			<c:if test="${roler=='信贷员' }">
				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
			                <div class="panel-body">
			                  <a href="<%=basePath%>khAction_beforeAddOrUpdateKh?khid=" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp;&nbsp;添加客户信息</a>
			                </div>
		              </section>
					</div>
				</div>
			</c:if>
			<div class="row">
				<div class="col-lg-12">
					<!-- BEGIN PANEL SECTION --> 
	               <section class="panel">
                  <div class="panel-body">
                     <div class="adv-table">
                        <table  class="display table table-striped table-advance table-hover table-bordered" id="hidden-table-info">
                           <thead>
                              <tr>
                              	 <th>客户ID</th>
                                 <th>客户姓名</th>
                                 <th>性别</th>
								 <th>年龄</th>
								 <th>出生年月</th>
								 <th>身份证号</th>
								 <th>学历</th>
								 <th>联系电话</th>
								 <th>状态</th>
								 <th>添加时间</th>
								 <th style="display: none;">婚姻状况</th>
                                 <th style="display: none;">身份证地址</th>
                                 <th style="display: none;">发证机关</th>
                                 <th style="display: none;">邮箱</th>
                                 <th style="display: none;">直系亲属联系人</th>
                                 <th style="display: none;">户口变更信息</th>
                                 <th style="display: none;">公司名称</th>
                                 <th style="display: none;">公司地址</th>
                                 <th style="display: none;">工作时间</th>
                                 <th style="display: none;">客户种类</th>
                                 <c:if test="${roler=='信贷员'}">
                                 	<th>操作</th>
                                 </c:if>
                              </tr>
                           </thead>
                           <tbody>
                              <c:forEach items="${khList }" var="obj">
                              	 <tr>
                              	 	 <td>${obj.id }</td>
	                                 <td>${obj.name }</td>
	                                 <td>${obj.sex }</td>
	                                 <td>${obj.age }</td>
	                                 <td>${obj.birthDate }</td>
	                                 <td>${obj.idCardNumber }</td>
	                                 <td>${obj.education }</td>
	                                 <td>${obj.tel }</td>
	                                 <c:if test="${roler=='信贷审批专员' }">
	                                 	<c:if test="${obj.status=='未审核' }">
	                                 		<td><a href="<%=basePath%>khAction_updateKhStatus?khid=${obj.id}">${obj.status }</a></td>
	                                 	</c:if>
	                                 	<c:if test="${obj.status=='已审核' }">
	                                 		<td>${obj.status }</td>
	                                 	</c:if>
	                                 </c:if>
	                                 <c:if test="${roler!='信贷审批专员' }">
	                                 	<td>${obj.status }</td>
	                                 </c:if>
	                                 <td>${obj.addtime }</td>
	                                 <td style="display: none;">${obj.maritalStatus }</td>
	                                 <td style="display: none;">${obj.idCardAddress }</td>
	                                 <td style="display: none;">${obj.issuingAuthority }</td>
	                                 <td style="display: none;">${obj.email }</td>
	                                 <td style="display: none;">${obj.immediateFamily }</td>
	                                 <td style="display: none;">${obj.accountChange }</td>
	                                 <td style="display: none;">${obj.company }</td>
	                                 <td style="display: none;">${obj.companyAddress }</td>
	                                 <td style="display: none;">${obj.workingHours }</td>
	                                 <td style="display: none;">${obj.type }</td>
	                                 <c:if test="${roler=='信贷员' }">
                                	<td>
		                             	<a class="btn btn-primary btn-xs" href="<%=basePath%>khAction_beforeAddOrUpdateKh?khid=${obj.id}"><i class="fa fa-pencil"></i></a>
		                                <a class="btn btn-danger btn-xs" data-toggle="modal" data-id="1" href="#myModal2" onclick="deleteRow('${obj.id }');"><i class="fa fa-times"></i></a>
		                             </td>
                                 	 </c:if>
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
			<form action="<%=basePath %>khAction_deleteKh" method="post">
				<input type="hidden" name="khDelId" id="delid" value="">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                 <h4 class="modal-title">确认删除该客户信息？</h4>
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
	function fnFormatDetails (oTable, nTr){
    	var aData = oTable.fnGetData(nTr);
        var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
        sOut += '<tr><td>婚姻状况:</td><td>'+aData[11]+'</td><td>&nbsp;</td><td>身份证地址:</td><td>'+aData[12]+'</td><td>&nbsp;</td><td>发证机关:</td><td>'+aData[13]+'</td><td>&nbsp;</td><td>邮箱:</td><td>'+aData[14]+'</td></tr>';
        sOut += '<tr><td>直系亲属联系人:</td><td>'+aData[15]+'</td><td>&nbsp;</td><td>户口变更信息:</td><td>'+aData[16]+'</td><td>&nbsp;</td><td>公司名称:</td><td>'+aData[17]+'</td><td>&nbsp;</td><td>公司地址:</td><td>'+aData[18]+'</td></tr>';
        sOut += '<tr><td>工作时间:</td><td>'+aData[19]+'</td><td>&nbsp;</td><td>客户类型:</td><td>'+aData[20]+'</td></tr>';
        sOut += '</table>';
        return sOut;
	}
	$(document).ready(function() {
		var nCloneTh = document.createElement( 'th' );
		var nCloneTd = document.createElement( 'td' );
		nCloneTd.innerHTML = '<img src="assets/advanced-datatable/examples/examples_support/details_open.png">';
        nCloneTd.className = "center";
        $('#hidden-table-info thead tr').each( function () {
			this.insertBefore( nCloneTh, this.childNodes[0] );
        });
		$('#hidden-table-info tbody tr').each( function () {
        	this.insertBefore(  nCloneTd.cloneNode( true ), this.childNodes[0] );
        });
        var oTable = $('#hidden-table-info').dataTable( {
	      "bFilter": false,"bLengthChange":false
        });
        $('#hidden-table-info tbody td img').live('click', function () {
	        var nTr = $(this).parents('tr')[0];
            if (oTable.fnIsOpen(nTr) ) {
				this.src = "assets/advanced-datatable/examples/examples_support/details_open.png";
                oTable.fnClose(nTr);
            }else{
                this.src = "assets/advanced-datatable/examples/examples_support/details_close.png";
                oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr),'details');
             }
         });
	});
</script>
<!-- END JS --> 
</body>
</html>
