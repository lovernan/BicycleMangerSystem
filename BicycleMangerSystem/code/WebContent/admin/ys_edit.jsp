<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            	院系编辑
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath }/ys_edit" method="post" id="editform">
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                      		  序号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="id" required lay-verify="required" class="layui-input">
                    </div>
                </div>
               <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                     	 修改为
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="academy_name" required lay-verify="required" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    
                    <button  class="layui-btn" lay-filter="add" lay-submit="">
                       		修改
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