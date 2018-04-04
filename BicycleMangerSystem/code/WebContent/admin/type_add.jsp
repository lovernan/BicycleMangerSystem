<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-添加
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
        <div>
            <form class="layui-form" action="${pageContext.request.contextPath }/type_add" method="post" id="userform">
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>类型</label>
                    <div class="layui-input-inline">
                        <input type="text"  name="type" 
                         class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填
                    </div>
                </div>
               
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">
                       		 增加
                    </button>
                </div>
            </form>
            
        </div>
        <script src="./lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="./js/x-layui.js" charset="utf-8">
        </script>
        <script type='text/javascript' src="${pageContext.request.contextPath }/admin/js/jquery.js"></script>
       <script>
            layui.use(['form','layer'], function(){
                //$ = layui.jquery;
               var form = layui.form()
              ,layer = layui.layer; */
            
           
              
             /*  //监听提交
              form.on('submit(add)', function(data){
            	  //使用ajax异步传输数据
            	   $.post(
            		 "user_add"
            		//$("#userform").serialize(),
            	
            	  );
            	  layer.alert("sssshh"); 
                console.log(data);
                //发异步，把数据提交给php
                layer.alert("增加成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });*/
                return false;
              }); 
              
              
            }); */
        </script>
        <script> -->
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>

</html>