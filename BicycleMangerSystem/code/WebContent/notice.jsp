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
			<div class="panel-heading" style="font-size:25px">关于清理仙林校区自行车停车位的通知</div>
			<div class="panel-body">
				广大师生：
				<p>近期仙林校区自行车乱停乱放现象开始重现，许多学生致电保卫处反映，大量“僵尸车”长期停留在车位内，导致现有自行车车位浪费、不够使用。</p>
				<p>为进一步规范校园停车秩序，腾出更多有效车位，方便广大同学就近停放自行车，保卫处将于2017年6月18日至25日期间，对校园内废旧的“僵尸自行车”进行清理，届时会临时就近停放在草坪上并有序排放，以方便相关车主及时推离进行维修。</p>
				<p>6月26日以后，对于被放弃推离进行维修的车辆，保卫处将视为废旧无主车辆，并按相关法规进行集中处理。</p>
				<p>2017年以来，校园内已出现十多起外卖电瓶车刮碰、撞伤师生的交通安全事故，外卖人员骑行电瓶车过程中打电话、看手机，速度过快，严重威胁校内师生人身安全，影响校园交通秩序。</p>
				<p>为维护广大师生安全，加强校园道路交通管理，参照周边院校做法，现决定：于2018年1月22日起禁止送餐电瓶车进校园。望广大师生积极支持和配合。</p>
				<p>特此通知！</p>
				<p style="text-indent:40em;">保卫处
					二〇一七年六月十五日</p>
			
			</div>
		</div>



		<!--引入footer  -->
		<jsp:include page="/footer.jsp"></jsp:include>
		</div>
</body>
</html>