<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd ">
<html>
<head>
<meta charset="utf-8" />
<title>登录</title>
<!-- <meta name="author" content="DeathGhost" /> -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/admin/css/style.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/admin/js/verificationNumbers.js"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/admin/js/jquery.particleground.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function() {
			
			//粒子背景特效
		$('body').particleground({
			
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});		
			
			
		});
	   function getCaptcha() {
			var newImg = document.createElement("img");
			newImg.src = "get_captcha";
			newImg.id 

 = "captcha";
			newImg.onclick = "getCaptcha()";
			newImg.style="width:150px; float:left";
			var oldImg = document.getElementById("captcha");
			document.getElementById("img").replaceChild(newImg, oldImg);
		}  
	
	 </script>
</head>
<body>
	<dl class="admin_login">
		<dt>
			<strong>站点后台管理系统</strong> <em>Management System</em>
		</dt>
		<form action="${pageContext.request.contextPath }/adminlogin"
			method="post">
			<dd class="user_icon">
				<input type="text" placeholder="账号" name="username"
					class="login_txtbx" />
			</dd>
			<dd class="pwd_icon">
				<input type="password" placeholder="密码" name="password"
					class="login_txtbx" />
			</dd>
			<dd id="img">

				<img id="captcha" src="/Bicycle/admin/get_captcha"
					style="width: 150px; float: left" /> <input id="captchaButton"
					value="点击更换验证码" type="button" 
					class="submit_btn" style="width: 150px" onclick="getCaptcha()" />

			</dd>
			<dd>
				<input type="text" placeholder="验证码" name="captcha" id="ya"
					class="login_txtbx" />
			</dd>
			<div style="padding-left: 160px; padding-top: 10px; color: white">
				<input type="radio" checked="checked" name="check" value="user">用户
				<input type="radio" name="check" value="admin">管理员
			</div>
			<dd>
				<input type="submit" value="立即登陆" class="submit_btn" id="btn" />
			</dd>
		</form>
		<div style="color: red">${info }</div>

		<dd>
			<p>南京郵電大學</p>
			<p>2018-02-08</p>
		</dd>
	</dl>
</body>
</html>
