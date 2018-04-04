<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            数据统计-查看
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
            <form class="layui-form layui-form-pane">
                <div class="layui-form-item">
                  <label for="L_title" class="layui-form-label1">
                        <span style="font-size: 24px; color: #00F; text-align:center">查看</span>
                  </label>
                    
                </div>
                
              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        用户名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        唯一标识
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        年龄
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        性别
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        所属
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试用时
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        预警等级
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试时间
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item layui-form-text">
                </div>
                
                <div class="layui-form-item">
                    <button class="layui-btn">
                        确定
                    </button>
                </div>
          </form>
    </div>
    <script src="./lib/layui/layui.js" charset="utf-8">
        </script>
    <script src="./js/x-layui.js" charset="utf-8">
        </script>
    <script>
            layui.use(['form','layer','layedit'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer
              ,layedit = layui.layedit;


                layedit.set({
                  uploadImage: {
                    url: "./upimg.json" //接口url
                    ,type: 'post' //默认post
                  }
                })
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