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
				 window.location.href="tolostfound.jsp";
			});	
			
		});
		</script>
</head>
<body style="background-color:#93DB70">
	<div class="container" >
		<!--引入header  -->
		<jsp:include page="/header.jsp"></jsp:include>
		<div class="btn-group" role="group" aria-label="...">
			<button type="button" class="btn btn-default" id="rent">失物招领</button>
			<button type="button" class="btn btn-default" id="torent">我要发帖</button>
		</div>
		
		<c:forEach items="${lostfoundlist.allList }" var="lostfound">
			<div class="panel panel-default" style="margin-top: 10px; " >
				<div class="panel-heading" style="font-size: 25px">${lostfound.name }</div>
				<div class="panel-body">
					<p>${lostfound.information }</p>
					<img style="width: 30%; height: 30%" src="${lostfound.image }">
					<p style="text-indent: 40em;">联系方式：${lostfound.tel }</p>
				</div>
				<div>
						<button type="submit" class="btn btn-default" style="margin-top:50px; margin-left:10px;width:100px" onclick="window.location.href='detailLost?rid=${lostfound.id}'">
						查看详情</button>
				</div>

			
	
		</c:forEach>
		<!--分页 -->
		<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
			<ul class="pagination" style="text-align: center; margin-top: 10px;">
				<!-- 上一页 -->
				<!-- 判断当前页是否是第一页 -->
				<c:if test="${lostfoundlist.currentPage==1 }">
					<li class="disabled"><a href="javascript:void(0);"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
				<c:if test="${lostfoundlist.currentPage!=1 }">
					<li><a
						href="${lostfoundlist.request.contextPath }/lostfoundlist?currentPage=${pageBean.currentPage-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>

				<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
					<!-- 判断当前页 -->
					<c:if test="${lostfoundlist.currentPage==page }">
						<li class="active"><a href="javascript:void(0);">${page}</a></li>&nbsp;
					</c:if>
					<c:if test="${lostfoundlist.currentPage!=page }">
						<li><a
							href="${pageContext.request.contextPath }/lostfoundlist?currentPage=${page}">${page}</a></li>&nbsp;
					</c:if>

				</c:forEach>

				<!-- 判断当前页是否是最后一页 -->
				<c:if test="${lostfoundlist.currentPage==pageBean.totalPage }">
					<li class="disabled"><a href="javascript:void(0);"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>&nbsp;
				</c:if>
				<c:if test="${lostfoundlist.currentPage!=pageBean.totalPage }">
					<li><a
						href="${pageContext.request.contextPath }/lostfoundlist?currentPage=${pageBean.currentPage+1}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>&nbsp;
				</c:if>

			</ul>
		</div>

		<!--引入footer  -->
		<jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>