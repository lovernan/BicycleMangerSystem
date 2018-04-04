<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>活动详情</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/x-admin.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/layui.css">
<script src="${pageContext.request.contextPath }/admin/js/layui.js"></script>
</head>

<body>
	<div class="x-body">
		<div class="layui-collapse" lay-accordion>
			<c:forEach items="${matchlist2.allList }" var="match">
				<div class="layui-colla-item">
					<h2 class="layui-colla-title">${match.title }</h2>
					<div class="layui-colla-content layui-show">${match.context }</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
<script>
//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function(){
  		var element = layui.element;
  
  		//…
	});
</script>
</html>