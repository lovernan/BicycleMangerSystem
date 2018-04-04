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
		
 		$(".reply").click(function(){
 			<c:if test="${empty user }">
 			<%response.sendRedirect("/Bicycle/admin/login.jsp"); %>
			</c:if>
 			//使输入框显示
 			$(this).parent().parent().children("td").get(4).style.display="block";
 			$(this).parent().parent().children("td").get(5).style.display="block";
 			
		}); 
		$(".btn_com").click(function(){
		
			//获取值
 			var rid = $(this).parent().parent().children("td").get(0).innerHTML;
 			var firstname = $(this).parent().parent().children("td").get(2).innerHTML;
 			var lastname = $(this).parent().parent().children("td").get(1).innerHTML;
 			var comment = $(this).parent().parent().children("td").find("textarea").val();			
 			 $.post(
 					 
 						"replylostcomment",
 						{"rid":rid,"firstname":firstname,"lastname":lastname,"comment":comment},
 						function(data){
 							if(data=="T"){
 								alert("评论成功");
 								
 								var tt="<tr><td> "+lastname+"&nbsp &nbsp评论 &nbsp" + firstname +" &nbsp :  "+comment+"&nbsp &nbsp<button class='reply'>回复</button></td></tr>";
 								$("#comm").append(tt);
 							}else{
 								alert("评论失败");
 							}
 						}
 					); 
 			 $(".view").style.display="block";
 			 
		}); 
 
		$("#tabletr").each(function(){
			var tmp=$(this).children().eq(4);						
			var btn=tmp.children();
			btn.bind("click",function(){
				var rid=btn.parent().parent().children("td").get(0).innerHTML;
				var rentname=btn.parent().parent().children("td").get(1).innerHTML;
				var username=btn.parent().parent().children("td").get(2).innerHTML;
				var comment=btn.parent().parent().children("td").find("textarea").val();
				
				 $.post(
					"addlostcomment",
					{"rid":rid,"rentname":rentname,"username":username,"comment":comment},
					function(data){
						if(data=="T"){
							alert("评论成功");
							
							var tt="<tr><td> "+username+"&nbsp &nbsp评论 &nbsp" + rentname +" &nbsp :  "+comment+"&nbsp &nbsp<button class='reply'>回复</button></td></tr>";
							$("#comm").append(tt);
						}else{
							alert("评论失败");
						}
					}
					);
				
			}); 
		});
		});
		</script>
</head>
<body style="background-color:#93DB70">
	<div class="container">
		<!--引入header  -->
		<jsp:include page="/header.jsp"></jsp:include>
		
		
			<div class="panel panel-default" style="margin-top: 10px">
				<div class="panel-heading" style="font-size: 25px">${lostSearch.name }</div>
				<div class="panel-body">
					<p>${lostSearch.information }</p>
					<img style="width: 400px; height: 300px" src="${lostSearch.image }">
					<p style="text-indent: 40em;">联系方式：${lostSearch.tel }</p>
				</div>
			<div>
			<table>
				<tr class="tr" id="tabletr">
					<td style="display:none;">${lostSearch.id}</td>
					<td style="display:none;">${lostSearch.name}</td>
					<td style="display:none;">${user.name}</td>
					<td>
						<textarea class="form-control" rows="3" style="width:1000px; height:100px; margin-left:20px"></textarea>
					</td>
					<td>
						<div>
						<button type="submit" class="btn btn-default" style="margin-top:50px; margin-left:10px;width:100px">评论</button>
						</div>
					</td>

				</tr>
			</table>
			<div style="margin-top:20px;margin-left:50px; font-size:20px">所有评论</div>
			<!--循环所有评论  -->
			<table class="table table-hover" style="margin-left:50px; padding-right:50px;width:1000px" id="comm">
			·	<c:forEach items="${lostcomments }" var="comment">
					<tr class="tr" id="trr">
						<td style="display:none;">${comment.rid}</td>
						<td style="display:none;">${user.name}</td>
						<td style="display:none;">${comment.rentname}</td>
						<td>${comment.rentname }&nbsp &nbsp评论 &nbsp${comment.username }&nbsp : &nbsp ${comment.comment } &nbsp &nbsp<button class="reply">回复</button></td>						
						<td class="view" style="display:none;"  >
							
								<textarea class="form-control"  style="float:left;"></textarea>
								<button type="submit" class="btn btn-default btn_com" style="margin-top:50px; margin-left:10px;width:100px;float:right" >评论</button>
							
						</td>
						
					</tr>
					<tr >
							
					</tr>
				</c:forEach>
			</table>
			</div>
			</div>

		<!--引入footer  -->
		<jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>