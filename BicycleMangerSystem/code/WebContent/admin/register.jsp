<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/css/style.css" />
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
	<script type='text/javascript' src="${pageContext.request.contextPath }/admin/js/jquery.js"></script>
	<script type='text/javascript' src="${pageContext.request.contextPath }/admin/js/verificationNumbers.js"></script>
	<script type='text/javascript' src="${pageContext.request.contextPath }/admin/js/jquery.particleground.min.js"></script>
	<script type="text/javascript">
	 $(document).ready(function() {			
			//粒子背景特效	
		 $('body').particleground({
			 	dotColor: '#5cbdaa',
			    lineColor: '#5cbdaa'
			});
	 //ajax异步判断学号是否存在
	});
	 $(function(){
		  $("#student_number").blur(function(){
			 var stu=$("#student_number").val();
			  $.post(
				"checkstu_number",
				{stu_number:stu},
				function(data){	
					if(data.isexit){
						$("#span").css({color:"red"});
						$("#span").html("该学号已经存在，请检查后重新输入");						
					}else{
						$("#span").css({color:"green"});
						$("#span").html("该学号未被注册，可以注册");
					}
				},
				"json"		 
			 )
		  });
		 }); 		 
	 </script>
</head>
<body>
	<dl class="admin_login" id="lizi">
		<dt>
			<strong>南京邮电大学自行车管理系统</strong> <em>Management System</em>
		</dt>
			<form action="${pageContext.request.contextPath }/register" method="post">
				<dd class="user_icon">
					<input type="text" placeholder="用户名" name="name" class="login_txtbx" />
				</dd>
				<dd class="stu_icon">
					<input type="text" placeholder="学号" name="student_number" class="login_txtbx" id="student_number" />
				</dd>
				<span id="span"></span>
				<dd class="pwd_icon">
					<input type="password" placeholder="密码" name="password" class="login_txtbx" />
				</dd>
				<dd>
					<select name="academy" style="background-color:#16a085;height:35px;width:300px;color:white">
						<c:forEach items="${academyList }" var="academy">
							<option>${academy.academy_name }</option>
						</c:forEach>
					</select>
				</dd>
				<dd >
					<input type="submit" value="立即注册" class="submit_btn" id="btn" />
				</dd>
			</form>
			<div style="color:red">
				${info }
			</div>
			
		<dd>
			<p>南京郵電大學</p>
			<p>2018-02-08</p>
		</dd>
	</dl>
</body>
</html>
