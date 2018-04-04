<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="./css/x-admin.css" media="all">
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>网站信息管理</cite></a>
			<a><cite>发布活动</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<form class="layui-form " action="${pageContext.request.contextPath }/match_add" method="post" style="width: 500px">
			<label class="layui-form-label">标题</label>
			<div class="layui-input-block">
				<input type="text" name="title" required lay-verify="required"
					placeholder="请输入标题" autocomplete="off" class="layui-input" style="width:800px">
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">内容</label>
				<div class="layui-input-block">
					<textarea name="context" placeholder="请输入内容" class="layui-textarea" style="width:800px;height:600px"></textarea>
				</div>
			</div>
			 <div class="layui-form-item">
    			<div class="layui-input-block">
      				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
    			</div>    		
  			</div>
		</form>
	</div>
</body>
</html>