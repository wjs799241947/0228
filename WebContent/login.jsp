<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>小猪</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/loginImg/favicon.png">

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" sizes="192x192" href="${pageContext.request.contextPath}/img/loginImg/app-icon72x72@2x.png">

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/img/loginImg/app-icon72x72@2x.png">

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <meta name="msapplication-TileImage" content="img/loginImg/app-icon72x72@2x.png">
  <meta name="msapplication-TileColor" content="#0e90d2">

  <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
  <!--
  <link rel="canonical" href="http://www.example.com/">
  -->
  <link rel="stylesheet" href="css/amazeui.min.css">
  <link rel="stylesheet" href="css/app.css">

<style type="text/css">
#weixin{
position: fixed;
bottom:6px;
left:81px; 
z-index: 10;  
}
     
#qq{  
position: fixed; 
bottom:5px; 
left:10px;  
z-index: 10;
}

#phone{
position: fixed; 
bottom: 6px;  
left:156px;   
z-index: 10; 
} 
 
</style>

</head>




<body>

<header>
  <div class="log-header">
      <h1><a href="/">Amaze UI</a> </h1>
  </div>
  
</header>


<h1 style="color: red;position: fixed;margin-left: 720px;">${requestScope.msg}</h1>
<div class="log"> 
 
  <div class="am-g">
  <div class="am-u-lg-3 am-u-md-6 am-u-sm-8 am-u-sm-centered log-content">
  
    <h1 class="log-title am-animation-slide-top">欢迎光临小猪民宿</h1>
   
    <br>
    <form class="am-form" id="log-form" action="login.action" method="post">
      <div class="am-input-group am-radius am-animation-slide-left">       
        <input type="email" name="tel" id="doc-vld-email-2-1" class="am-radius" data-validation-message="手机号码有误，请重填" placeholder="电话号码" required pattern="^1(3|4|5|7|8)\d{9}$"/>
        <span class="am-input-group-label log-icon am-radius"><i class="am-icon-user am-icon-sm am-icon-fw"></i></span>
      </div>      
      <br>
      <div class="am-input-group am-animation-slide-left log-animation-delay">       
        <input type="text" name="password" class="am-form-field am-radius log-input" data-validation-message="密码号码有误，请重填" placeholder="密码" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$">
        <span class="am-input-group-label log-icon am-radius"><i class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
      </div>      
      <br>
      <button type="submit" class="am-btn am-btn-primary am-btn-block am-btn-lg am-radius am-animation-slide-bottom log-animation-delay">登 录</button>
            <p class="am-animation-slide-bottom log-animation-delay"><a href="#">忘记密码?</a></p>
      <div class="am-btn-group  am-animation-slide-bottom log-animation-delay-b" style="z-index: 5">
      <p>使用第三方登录</p>
        <img alt="" src="img/loginImg/qq.jpg" width="25px;" height="25px;" id="qq">
      <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> QQ</a>
      <img alt="" src="img/loginImg/weixin.jpg" width="25px;" height="25px;" id="weixin">
      <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> 微信</a>
      <img alt="" src="img/loginImg/phone.jpg" width="25px;" height="25px;" id="phone">
      <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i>手机号</a>
      </div> 
    </form>
  </div>
  </div>
  
  <div class="log-re" style="position: fixed;margin-top: 520px;margin-right: 490px;">
  
   <a href="reg.jsp"><button type="button" class="am-btn am-btn-default am-radius log-button">注册</button></a>
   
  </div> 
  <footer class="log-footer">   
   Copyrigth@2020.Company name All ringhts reseved.Softeem
  </footer>
</div>



<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script>
</body>

</body>
</html>