<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="layui/css/layui.css" />
<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>

<style type="text/css">
body{
margin: 100px 550px;
background: url(img/regbg.jpg) no-repeat center;opacity: 1;
background-size: cover; 
}
#main{
width: 400px;
height: 400px;
}
</style>

 <script type="text/javascript">
 document.onkeyup = function(event){
				var e = event || arguments.callee.caller.arguments[0];
				
               var a = $("#password").val();
               var sz = RegExp(/\d/);
               var dx = RegExp(/[A-Z]/);
               var xx = RegExp(/[a-z]/);
               if(a.match( /[\d\D]{8,30}/)){
            	   $("#yz1").css("color","green");  
               }else{
            	   $("#yz1").css("color","red");
               }
               /* ^(?![A-Za-z]+$)(?![A-Z\\d]+$)(?![A-Z\\W]+$)(?![a-z\\d]+$)(?![a-z\\W]+$)(?![\\d\\W]+$)\\S{8,}$ */
              
               if(a.match(sz)){
            	   $("#yz4").css("color","green");
               }else{
            	   $("#yz4").css("color","red");
               }
               
               if(a.match(dx)){
            	   $("#yz3").css("color","green");
               }else{
            	   $("#yz3").css("color","red");
               }
               
               if(a.match(xx)){
            	   $("#yz2").css("color","green");
               }else{
            	   $("#yz2").css("color","red");
               }
               
               
		 }

 </script>
</head>
<body>
<h1 style="color: red;position: fixed;margin-left: 420px;">${requestScope.msg}</h1>
<div id="main">
<form class="layui-form" action="reg.action">
  <div class="layui-form-item">
  
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="usename" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label> 
    <div class="layui-input-inline">
    
      <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" id="password">
    </div>
    </div>
    
    <div style="position: fixed;margin-top:-43px;margin-left: 330px;"><span id="yz1" style="color: green;">超过八位</span>&nbsp;&nbsp;&nbsp;<span id="yz2" style="color: green;">包含小写字母</span>&nbsp;&nbsp;&nbsp;<span id="yz3" style="color: green;">包含大写字母</span>&nbsp;&nbsp;&nbsp;<span id="yz4" style="color: green;">包含数字</span></div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">电话</label>
    <div class="layui-input-inline">
      <input type="password" name="tel" required lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input">
    </div>
     </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">出身日期</label>
    <div class="layui-input-inline">
      <input type="date" name="bithday" required lay-verify="required" autocomplete="off" class="layui-input">
    </div>
     </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">爱好</label>
    <div class="layui-input-block">
      <input type="checkbox" name="like[write]" title="写作">
      <input type="checkbox" name="like[read]" title="阅读" checked>
      <input type="checkbox" name="like[dai]" title="发呆">
    </div>
  </div>
  <!-- <div class="layui-form-item">
    <label class="layui-form-label">开关</label>
    <div class="layui-input-block">
      <input type="checkbox" name="switch" lay-skin="switch">
    </div>
  </div> -->
  <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女" checked>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">个性签名</label>
    <div class="layui-input-block">
      <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button type="submit" class="layui-btn" >立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
 
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
</div>
</body>
</html>