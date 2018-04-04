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
<title>比赛详情</title>

<!-- 引入Bootstrap核心样式文件 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
	p{
		text-indent:2em;
		font-size:20px;
	}
</style>
</head>
<body>
	<div class="container">
		<!--引入header  -->
		<jsp:include page="/header.jsp"></jsp:include>
		
		<div class="panel panel-default">
			 <div class="panel-heading" style="font-size: 25px">${matchdetail.title }</div>
			<div class="panel-body">
					<pre>${matchdetail.context } </pre>
			</div>
		</div>



		<!--引入footer  -->
		<jsp:include page="/footer.jsp"></jsp:include>
		</div>
</body>
</html>