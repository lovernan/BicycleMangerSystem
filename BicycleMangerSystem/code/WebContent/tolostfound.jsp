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
<title>租赁</title>

<!-- 引入Bootstrap核心样式文件 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
p {
	text-indent: 2em;
	font-size: 20px;
}
</style>
<script type="text/javascript">
		$(function(){
			$("#rent").click(function(){
				 window.location.href="rentlist";
			});	
			$("#torent").click(function(){
				 window.location.href="/tolostfound.jsp";
			});	

		});
		</script>
</head>
<body>
	<div class="container">
		<!--引入header  -->
		<jsp:include page="/header.jsp"></jsp:include>
		<div class="btn-group" role="group" aria-label="...">
		  <button type="button" class="btn btn-default" id="rent">我要租用</button>
		  <button type="button" class="btn btn-default" id="torent">我要出租</button>
		 </div>
			<c:if test="${empty user }">
				<%response.sendRedirect("/Bicycle/admin/login.jsp"); %>
			</c:if>
			<c:if test="${!empty user }">
				<div style="margin-top:15px">
					<form class="form-horizontal" action="lostfound_add" method="post"  enctype="multipart/form-data">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3" name="name" value="${user.name }">										
								</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">填写信息</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3" name="information">										
								</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">联系方式</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3" name="tel">										
								</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">上传照片</label>
								<div class="col-sm-10">
									<input type="file"  name="image" class="layui-input">									
								</div>
						</div>
						<div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default">提交</button>
					    </div>
					</form>
				</div>
			</c:if>


		<!--引入footer  -->
		<jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>