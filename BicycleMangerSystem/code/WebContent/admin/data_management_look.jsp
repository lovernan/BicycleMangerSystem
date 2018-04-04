<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <form class="layui-form layui-form-pane">
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        ç¼å·
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="1" disabled="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                       å¤çäºº
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        å¤çç±»å
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="ä¸ä¼ å¾ç"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label for="content" class="layui-form-label">
                        å·ä½åå®¹
                    </label>
                    <div class="layui-input-block">
                         <textarea disabled="" id="content" name="content" autocomplete="off"
                        class="layui-textarea" style="height: 80px;">åå®¹å°±æ¯ææ¶æ²¡æåå®¹......</textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        å¤çæ¶é´
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="2017-01-10 16:33:45"  class="layui-input">
                    </div>
                </div>
                 <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        å¤çç¶æ
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="å·²å®¡æ ¸"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn">
                        è¿å
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
            
              //èªå®ä¹éªè¯è§å
              // form.verify({
              //   nikename: function(value){
              //     if(value.length < 5){
              //       return 'æµç§°è³å°å¾5ä¸ªå­ç¬¦å';
              //     }
              //   }
              //   ,pass: [/(.+){6,12}$/, 'å¯ç å¿é¡»6å°12ä½']
              //   ,repass: function(value){
              //       if($('#L_pass').val()!=$('#L_repass').val()){
              //           return 'ä¸¤æ¬¡å¯ç ä¸ä¸è´';
              //       }
              //   }
              // });
              //çå¬æäº¤
              form.on('submit(save)', function(data){
                console.log(data);
                //åå¼æ­¥ï¼ææ°æ®æäº¤ç»php
                layer.alert("", {icon: 6},function () {
                    // è·å¾frameç´¢å¼
                    var index = parent.layer.getFrameIndex(window.name);
                    //å³é­å½åframe
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