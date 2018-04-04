<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-编辑
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/x-admin.css" media="all">
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form" action="${pageContext.request.contextPath }/user_edit" method="post">

			<input type="hidden" class="layui-input" name="id" value="${user.id }">

			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 姓名</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" value="${user.name }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 学号</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="student_number" value="${user.student_number }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 密码</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="password" value="${user.password }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 院系</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="academy" value="${user.academy }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 车型</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="type" value="${user.type}">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 图片</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="image" value="${user.image }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> 个人描述</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="descc" value="${user.descc }">
				</div>
			</div>
                    <button class="layui-btn" key="set-mine" lay-filter="save" lay-submit>
                        提交
                    </button>
                </div>
            </form>
        </div>
        <script src="./lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="./js/x-layui.js" charset="utf-8">
        </script>
        <script>
            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
            
             
              //监听提交
              form.on('submit(save)', function(data){
                console.log(data);
                layer.alert("提交成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
                return false;
              });
              
              
            });
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