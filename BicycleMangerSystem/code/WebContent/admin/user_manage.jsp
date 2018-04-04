<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <title>
            用户管理
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
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>用户管理</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
          <form class="layui-form x-center" action="" style="width:500px">
                <div class="layui-form-pane" style="margin-top: 15px;">

                </div> 
            </form>
            <xblock>
            <button class="layui-btn" onclick="user_management_add('添加用户','admin/user_manage_add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加</button>
            <span class="x-right" style="line-height:25px">共有数据：${pageBean.totalCount  } 条</span></xblock>
            <table class="layui-table">
                <thead>
                    <tr>                 
                        <th>id</th>
                        <th>姓名</th>
                        <th>学号</th>
                        <th>密码</th>
                        <th>院系</th>
                        <th>车型</th>
                        <th>图片</th>
                        <th>个人描述</th>     
                        <th>操作</th>                                       
                </thead>
                <tbody>
                	<c:forEach items="${pageBean.allList }" var="user">
                    	<tr>
	                        <td>${user.id }</td>
	                        <td>${user.name }</td>
	                        <td>${user.student_number }</td>
	                        <td>${user.password }</td>
	                        <td>${user.academy }</td>
	                        <td>${user.type }</td>
	                        <td> <img src="${user.image }" style="width:20px;height:20px"></td>
	                        <td>${user.descc }</td>
	                        <td>                    
	                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_manage_edit?id=${user.id }','4','','510')"
	                            class="ml-5" style="text-decoration:none">
	                                <i class="layui-icon">&#xe642;</i>
	                            </a>
	                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
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
							href="${pageContext.request.contextPath }/userlist?currentPage=${pageBean.currentPage-1}"
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
								href="${pageContext.request.contextPath }/userlist?currentPage=${page}">${page}</a></li>&nbsp;
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
							href="${pageContext.request.contextPath }/userlist?currentPage=${pageBean.currentPage+1}"
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
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              laydate = layui.laydate;//日期插件
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

              //以上模块根据需要引入
              var start = {
                min: laydate.now()
                ,max: '2099-06-16 23:59:59'
                ,istoday: false
                ,choose: function(datas){
                  end.min = datas; //开始日选好后，重置结束日的最小日期
                  end.start = datas //将结束日的初始值设定为开始日
                }
              };
              
              var end = {
                min: laydate.now()
                ,max: '2099-06-16 23:59:59'
                ,istoday: false
                ,choose: function(datas){
                  start.max = datas; //结束日选好后，重置开始日的最大日期
                }
              };
              
            });

            //批量删除提交
             function delAll () {
                layer.confirm('确认要删除吗？',function(index){
                    //捉到所有被选中的，发异步进行删除
                    layer.msg('删除成功', {icon: 1});
                });
             }
             /*用户-添加*/
            function user_management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            /*用户-查看*/
            function user_management_show(title,url,id,w,h){
                x_admin_show(title,url,w,h);
            }

             /*用户-停用*/
            function member_stop(obj,id){
                layer.confirm('确认要停用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-disabled layui-btn-mini">已停用</span>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                });
            }

            /*用户-启用*/
            function member_start(obj,id){
                layer.confirm('确认要启用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                });
            }
            // 用户-编辑
            function user_management_edit (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
            /*密码-修改*/
            function user_management_password(title,url,id,w,h){
                x_admin_show(title,url,w,h);  
            }
            /*用户-删除*/
            function member_del(obj,id){
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