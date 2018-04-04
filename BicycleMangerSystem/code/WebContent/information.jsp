<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

<!-- 引入Bootstrap核心样式文件 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".btn_com").click(function(){	
				
				$("input").attr("disabled",false);				
			});
		});
	</script>
</head>
<body>
	<div class="container">
		<!--引入header  -->
		<jsp:include page="/header.jsp"></jsp:include>
		<!--判断是否登陆  -->
		<div>
			<c:if test="${empty user }">
			<%response.sendRedirect("/Bicycle/admin/login.jsp"); %>
			<%-- /<jsp:forward page="/admin/login.jsp"></jsp:forward> --%>
			</c:if>
			<c:if test="${!empty user }">
				<!--回显个人信息  -->
				<form class="form-horizontal" action="${pageContext.request.contextPath }/user_editt" method="post" id="userform" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${user.name }" disabled="true">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group col-md-6">
								<label for="inputPassword3" class="col-sm-2 control-label">学号</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${user.student_number }" disabled="disabled"> 
								</div>
							</div>
						</div>
					</div>
										<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${user.password }" disabled="disabled">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group col-md-6">
								<label for="inputPassword3" class="col-sm-2 control-label">学院</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${user.academy }" disabled="disabled">
								</div>
							</div>
						</div>
					</div>
										<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">类型</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${user.type }" disabled="disabled">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group col-md-6">
								<label for="inputPassword3" class="col-sm-2 control-label">图片</label>
								<div class="col-sm-10">
								<img src="${user.image }" style="height:300px;width:200px">
								<input type="file"  name="image"
                         class="form-control" disabled="disabled" >
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="inputPassword3" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3"
									value="${user.descc }" disabled="disabled">
							</div>
						</div>
					</div>
					<span>
							<input type="submit" class="btn btn-default sure" disabled="disabled">				
					</span>
				</form>
							<button class="btn btn-default btn_com" >修改</button>
			</c:if>
		</div>
		<!--引入footer  -->
		 <jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>