<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>小猪民宿</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0" />
		<link rel="icon" href="/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/superfish.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css" />
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.css" />
		<script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		
		<style type="text/css">
		
		.form-control{
		display: inline-block;
		}
		.xinxi{
		display:inline-block;
		margin-top: 20px;
		font:bolder 18px "微软雅黑" ;
		
		 }
		 
		 #update{
		 width:800px;
		 height:600px;
		 position: fixed;
		 top:80px;
		 left: 350px;
		 background-color: #B2E2FA;
		 padding-left: 150px;
		 border-radius: 15px;
		 display: none;
		 }
		 
		 #fanhui{
		 position: absolute;
		 bottom: 10px;
          left:300px;
		 }
		 
		  #tijiao{
		 position: absolute;
		 bottom: 10px;
          left:450px;
		 }
		 
		 
		</style>
		 <script type="text/javascript">
		 function updatemsg(){
    		if(document.getElementById("update").style.display == "none"){
    		document.getElementById("update").style.display = "block";
    		}else{
    			document.getElementById("update").style.display = "none";
    		}
    	}
		 
		 function submitok(){
			var a = $("#password1").val();
			var b = $("#password2").val();
			if(a !== b){
				 alert("两次输入密码不一致，请修改!");
				 return false;
			 }else{ 
				
				 var c = confirm("确定修改?");
				 return c; 
			  } 
			
			 
			
		 }
		 
		/*  $(function(){
				$("#tijiao").click(function(){
					var a =	document.getElementById("password").value;
					var b =	document.getElementById("password2").value;
					if(a != b){
						alter("两次输入密码不一致，请修改!");
						 return false;
					}	
				});
			}); */
			
		    
		 document.onkeyup = function(event){
				var e = event || arguments.callee.caller.arguments[0];
				
               var a = $("#password1").val();
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
		<div class="wrapper en-lang-class">
			<div class="page">
				<!----toubu-->
				<div class="header-container">

					<div class="row">
						<div class="col-xs-12">
							<div class="header">
							<div id="top">
				<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
				<div class="container">
		            <div class="navbar-header">
			             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
						 </button>
			    		<a class="navbar-brand" href="#">主页</a>
					</div>
				<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="lione"><a href="#">欢迎登入&nbsp;&nbsp;${sessionScope.user.username}${sessionScope.user.sex == 0 ? "先生" : "女士" }</a></li>
				<li class="lione"><a href="#">帮助 </a></li>
				<li class="lione"><a href="#">在线客服</a></li>
				<button type="button" class="btn btn-info" id="login">前去登入</button>
				<li class="lione"><a href="userLogoutServlet">[安全退出]</a></li>
			</ul>
				</div>
		</div>
		</div>
			</div>
								<div class="container">
 <span id="date1">入住时间:</span>  <span id="date2">离开时间:</span>
									<a href="https://baike.sogou.com/v63475307.htm?fromTitle=%E5%B0%8F%E7%8C%AA%E7%9F%AD%E7%A7%9F" title="Magento" class="logo" style="position: relative;left: 0px;top:40px">
										<img src="img/logo.jpg" alt="Magento Commerce" style="widows: 110px;height: 110px;margin-bottom: 50px;margin-top: 20px;"/>
									</a>

									<form class="bs-example bs-example-form" role="form" action="queryBylocal.action?pageNow=1" method="post">
									<div class="input-group input-group-lg" >
			                         <input type="text" class="form-control" placeholder="输入目的地" name="address">
			                         </div>
			                         
			                         
									<div class="input-group input-group-lg" style="margin-left: 100px;margin-right:100px;">
			                     <input type="Date" class="form-control" name="startDate">
			                         </div>
			                         
			                         
									<div class="input-group input-group-lg">
			                    <input type="Date" class="form-control" name="endDate">
			                         </div>
									<button type="submit" class="btn btn-info" id="tj">搜索</button> 
									</form>

									 

									<div class="clear"></div>

								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>

				<!----导航--->
				<div class="nav-container" style="position: relative; top: 0;width:1145px;margin:0 auto;">

					<ul id="nav" class="sf-menu sf-js-enabled sf-arrows" style="margin-bottom: 0px;">

						<li class="level0 nav-1  level-top">
							<a href="index.jsp" class="level-top sf-with-ul"><span>首页</span></a>
						</li>

						<li class="level0 nav-4 level-top">
							<a href="tousermessage.action?id=${sessionScope.user.id }" class="level-top"><span>个人中心</span></a>
						</li>

						<li class="level0 nav-1  level-top">
							<a href="quertOrder.action?pageNow=1" class="level-top sf-with-ul"><span>我的订单</span></a>
						</li> 

						<li class="level0 nav-1  level-top">
							<a href="houseUserMsg.action?pageNow=1" class="level-top sf-with-ul"><span>金牌房东</span></a>
						</li>

						<li class="level0 nav-2 level-top">
							<a href="#" class="level-top"><span>小猪新闻</span></a>
						</li>

						<li class="level0 nav-3 level-top">
							<a href="#" class="level-top"><span>招贤纳士</span></a>
						</li>

						<li class="level0 nav-3 level-top">
							<a href="#" class="level-top"><span>举报中心</span></a>
						</li>

						<li class="level0 nav-4 level-top">
							<a href="#" class="level-top"><span>联系我们</span></a>
						</li>
					</ul>


				</div>

               


<div class="container">
<div class="jumbotron" style="height: 630px;margin-top: 40px;padding-left: 200px;">
<h2>我的资料</h2><h3 style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;${msg }</h3>
<div class="col-sm-10">
<input type="text" value="${requestScope.user.id}" hidden="true">
			<span class="xinxi">用户名:</span><input class="form-control" type="text" value="${requestScope.user.username}" disabled="disabled">
</div>

<div class="col-sm-10">
			<span class="xinxi">密码:</span><input class="form-control" type="password" value="${requestScope.user.userpwd}" disabled>
</div>

<div class="col-sm-10">
				<span class="xinxi">性别:</span><select class="form-control" disabled="disabled">
					<option>${requestScope.user.sex == 0 ? "男" : "女"}</option>
					<option>${requestScope.user.sex == 1 ? "男" : "女"}</option>
				</select>
			</div>

<div class="col-sm-10">
			<span class="xinxi">年龄:</span><input class="form-control" type="text" value="${requestScope.user.age}" disabled="disabled">
</div>

<div class="col-sm-10">
			<span class="xinxi">电话:</span><input class="form-control" type="text" value="${requestScope.user.tel}" disabled="disabled">
			<button type="button" class="btn btn-info" style="margin-top: 30px;margin-left: 300px;" onclick="updatemsg()">修改信息</button>
</div>


</div>

</div>


<!--修改信息  -->				
<div class="container" id="update">
<h2 style="margin-left: 200px;">信息修改</h2>
<form action="updateMsg.action" method="post">
<div class="col-sm-10">
<input type="text" value="${requestScope.user.id}" hidden="true" name="id">
			<span class="xinxi">用户名:</span><input class="form-control" type="text" value="${requestScope.user.username}" name="username">
</div>

<div class="col-sm-10">
			<span class="xinxi">密码:</span>&nbsp;&nbsp;&nbsp;<span id="yz1" style="color: green;">超过八位</span>&nbsp;&nbsp;&nbsp;<span id="yz2" style="color: green;">包含小写字母</span>&nbsp;&nbsp;&nbsp;<span id="yz3" style="color: green;">包含大写字母</span>&nbsp;&nbsp;&nbsp;<span id="yz4" style="color: green;">包含数字</span><input class="form-control" id="password1" type="password" value="${requestScope.user.userpwd}" name="userpwd">
</div>

<div class="col-sm-10">
			<span class="xinxi">验证密码:</span><input class="form-control" type="password" value="${requestScope.user.userpwd}" name="updatepwd" id="password2">
</div>

<div class="col-sm-10">
				<span class="xinxi">性别:</span><%-- <select id="disabledSelect" class="form-control">
					<option>${sessionScope.user.sex == 0 ? "男" : "女"}</option>
					<option>${sessionScope.user.sex == 1 ? "男" : "女"}</option>
				</select> --%>
				
				<input list="typeone" name="updatesex" id="updatesex" class="form-control" value="${requestScope.user.sex == 0 ? '男' : '女'}"/>
                 <datalist id="typeone">
                  <option value="男"> 
                  <option value="女"> 
    </datalist>
				
			</div>
			
			

<div class="col-sm-10">
			<span class="xinxi">年龄:</span><input class="form-control" type="text" value="${requestScope.user.age}" name="age">
</div>

<div class="col-sm-10">
			<span class="xinxi">电话:</span><input class="form-control" type="text" value="${requestScope.user.tel}" name="tel">
			
</div>
<button type="button" class="btn btn-info" id="fanhui" onclick="updatemsg()">返回</button>
<button type="submit" class="btn btn-warning" id="tijiao" onclick="return submitok()">提交</button>
</form>
 
</div>


<!----dibu--->
			
			
			<footer class="am_footer" style="width:100%">
    <div class="am_footer_con">
        <div class="am_footer_link">
            <span>关于小猪</span>
            <ul>
                <li><a href="###">关于小猪</a></li>
                <li><a href="###">发展历程</a></li>
                <li><a href="###">友情链接</a></li>
            </ul>
        </div>


        <div class="am_footer_don">
            <span>回头客</span> 
            <dl>
                <dt><img src="img/logo.jpg" alt=""></dt>
                <dd>“民宿” 二字，虽然平常，却总令人神往！我把目标定为一个叫原颂若宿的民宿，
                “原”意为回归本质，“颂”象征诗和远方，这不就是我一直想要的生活吗？
                    <a href="###" class="footdon_pg ">
                        <div class="foot_d_pg am-icon-apple "> App store</div>
                    </a><a href="###" class="footdon_az animated">
                        <div class="foot_d_az am-icon-android "> Android</div>
                    </a></dd>

            </dl>
        </div>

        <div class="am_footer_erweima">
            <div class="am_footer_weixin"><img src="img/low2.jpg" alt="not found">

                <div class="am_footer_d_gzwx am-icon-weixin"> 关注微信</div>
            </div>
            <div class="am_footer_ddon"><img src="img/low.png" alt="not found">

                <div class="am_footer_d_dxz am-icon-cloud-download"> 扫码下载</div>
            </div>

        </div>

    </div>
    <div class="am_info_line">Copyright(c)2015 <span>PetShow</span> All Rights Reserved</div>
</footer>
			
			
			

	</body>

</html>