<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <title>
            数据管理-查看
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/stylee.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/x-admin.css" media="all">
        <style>

        	.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
        </style>
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>数据管理</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
            <xblock>
            <button class="layui-btn" onclick="ys_management_add('添加院系','admin/ys_management_add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加</button>
            <span class="x-right" style="line-height:20px">共有数据：${pageBean.totalCount  } 条</span></xblock>
            <table class="layui-table">
                <thead>
                    <tr>            
                    	<th>序号</th>               
                        <th>院系</th>
                        <th>操作</th>        
                    </tr>
                </thead>
                <tbody id="x-link">
                	<c:forEach items="${pageBean.allList }" var="academy">
	                    <tr>	                    	
	                    	<td>${academy.id }</td>
							<td>${academy.academy_name } </td>                        
	                         <td class="td-manage">
	                            <a title="编辑" href="javascript:;" onclick="ys_edit('编辑','admin/ys_edit.jsp','4','','510')"
	                            class="ml-5" style="text-decoration:none">
	                                <i class="layui-icon">&#xe642;</i>
	                            </a>
	                            <a title="删除" href="javascript:;" onclick="data_management_del(this,'1')" 
	                            style="text-decoration:none">
	                                <i class="layui-icon">&#xe640;</i>
	                            </a> 
	                        </td>
	                    </tr>
					</c:forEach>
				</tbody>		
           </table>
		<!--分页 -->
		<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
			<ul class="pagination" style="text-align: center; margin-top: 10px;">
				<!-- 上一页 -->
				<!-- 判断当前页是否是第一页 -->
				<c:if test="${pageBean.currentPage==1 }">
					<li class="disabled"><a href="javascript:void(0);"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
				<c:if test="${pageBean.currentPage!=1 }">
					<li><a
						href="${pageContext.request.contextPath }/academy?currentPage=${pageBean.currentPage-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
 
				<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
					 <!-- 判断当前页 -->
					<c:if test="${pageBean.currentPage==page }">
						<li class="active"><a href="javascript:void(0);">${page}</a></li>&nbsp;
					</c:if>
					<c:if test="${pageBean.currentPage!=page }">
						<li><a
							href="${pageContext.request.contextPath }/academy?currentPage=${page}">${page}</a></li>&nbsp;
					</c:if>

				</c:forEach>

				<!-- 判断当前页是否是最后一页 -->
				<c:if test="${pageBean.currentPage==pageBean.totalPage }">
					<li class="disabled"><a href="javascript:void(0);"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>&nbsp;
				</c:if>
				<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
					<li><a
						href="${pageContext.request.contextPath }/academy?currentPage=${pageBean.currentPage+1}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>&nbsp;
				</c:if>

			</ul>
		</div>
		<div id="page"></div>
        </div>
        <br /><br /><br />
        <script src="${pageContext.request.contextPath }/admin/lib/layui/layui.js" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath }/admin/js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['element','laypage','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
              form = layui.form();//弹出层
			  
			  
			/*    //以上模块根据需要引入
              laypage({
                cont: 'page'
                ,pages: 100
                ,first: 1
                ,last: 100
                ,prev: '<em><</em>'
                ,next: '<em>></em>'
              });  */


          })

              

              //以上模块根据需要引入

            //批量删除提交
             function delAll () {
                layer.confirm('确认要删除吗？',function(index){
                    //捉到所有被选中的，发异步进行删除
                    layer.msg('删除成功', {icon: 1});
                });
             }
            
            //增加操作
            function ys_management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }

            // 编辑
            function ys_edit (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
            
            /*删除*/
            function data_management_del(obj,id){
                layer.confirm('确认要删除吗？',function(index){
                    //发异步删除数据
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                });
            }
            </script>
            <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>
</html>