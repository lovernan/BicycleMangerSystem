<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>首页</title>

<%-- <!-- 引入Bootstrap核心样式文件 -->
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 引入jQuery核心js文件 -->
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script> --%>
<script type="text/javascript">
		$(function(){
			$("#zhuce").click(function(){
				 window.location.href="register_ready";
			});	
			$("#login").click(function(){
				 window.location.href="admin/login.jsp";
			});	

		});
		</script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-4" >	
					<div style="margin-top:20px">		
					 <span ><font size="5px"  >校园自行车服务平台</font></span>
					 </div>
			</div>
			<div class="col-lg-4" align="center"></div>
			<div class="col-lg-4" style="height: 50px">
				<c:if test="${empty user }">
					<div class="btn-group" align="center" role="group" aria-label="..."
						style="padding-left: 200px; margin-top: 7px">
						<span>
						<button type="button" class="btn btn-default" id="login">登陆</button>
						<button type="button" id="zhuce" class="btn btn-default">注册</button>
						</span>
					</div>
				</c:if>
				<c:if test="${!empty user }">
					<div style="padding-top: 15px; padding-left: 160px">
						欢迎您：${user.name}
						<button type="button" class="btn btn-default" id="quit"
							onclick="window.location.href='quitservlet'">退出</button>
					</div>
				</c:if>
			</div>
		</div>
		<div class="row" style="margin-top: 10px">
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath }/">首页</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath }/notice.jsp">保卫处公告</a></li>
						<li><a href="matchlist">官方活动</a></li>
						<li><a href="rentlist">自行车二手交易</a></li>
						<li class="dropdown"><a
							href="lostfoundlist">失物招领<span
								class="sr-only">(current)</span></a></li>
						 <li class="dropdown">
							<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">我的信息 <span class="caret"></span></a>
							<ul class="dropdown-menu">								
								<li><a href="${pageContext.request.contextPath }/information.jsp">自行车信息</a></li>
								<li><a href="${pageContext.request.contextPath }/mybbs?username=${user.name}">我的帖子</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-right" action="${pageContext.request.contextPath }/search" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search" name="search">
						</div>
						<button type="submit" class="btn btn-default">查询</button>
					</form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
		</div>
	</div>
</body>
</html>