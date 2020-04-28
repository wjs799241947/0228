<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
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
		
		#huanye{
	    font:normal 20px "微软雅黑" ;
	    margin-top: 300px; 
	    margin-left: 120px;
	    }
	    #orderdetail{
		 width:800px;
		 height:600px;
		 position: fixed;
		 top:80px;
		 left: 350px;
		 background-color: #B2E2FA;
		 padding-left: 150px;
		 padding-top: 50px;
		 border-radius: 15px;
		 display: none;
		 }
	      #fanhui{
		 position: absolute;
		 bottom: 50px;
          left:380px;
		 }
		
		 
		</style>
		
	<script type="text/javascript">
	
	$(function(){
		$("#xiangqing").click(function(){
			$.ajax({
				type:'GET',
				url:"${pageContext.request.contextPath}/queryDetail.action", 
				data:'orderid=' + $("#orderid").html(),
				dataType:"json",
				 success:function(data){
				    $("#detail").children().remove();
				    
				    var trtd = "<tr><th>房主</th><th>房主电话</th><th>入住时间</th><th>离开时间 </th><th>总金额</th><th>操作</th></tr>";
				    
				    trtd += "<tr>"  + /* +  "<img src=/file/" + data.housepic + "style= width: 300px;height: 200px;" + "/>" +  */ "<td>" + data.mastname + "</td><td>" + data.tel + "</td><td>" + data.startDate + "</td>" + 
			        "<td>" + data.startDate + "</td><td>" + data.price + "</td><td>" + "<a href='#'>点评</a>" + "</td></tr>";
			        
					$("#detail").append(trtd); 
					
				} 
				
			});
			
			
		});
		
	});
		

	
	</script>
		
		<script type="text/javascript">
		 function fanhui(){
		 		if(document.getElementById("orderdetail").style.display == "none"){
		 		document.getElementById("orderdetail").style.display = "block";
		 		}else{
		 			document.getElementById("orderdetail").style.display = "none";
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
				<button type="button" class="btn btn-info" id="login"><a href="userLogoutServlet">前去登入</a></button>
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

               
               
               <!-- 订单 -->
<div class="container">
<div class="jumbotron" style="height: 630px;margin-top: 40px;padding-left: 200px;">
<h2>我的订单</h2><h3 style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;${msg }</h3>

<table class="table table-hover">
<tr>
<td>订单序号</td>
<td>用户名</td>
<td style="width: 240px">订单生成时间</td>
<td>总额</td>
<td>状态</td>
<td>订单详情</td>
<td>操作</td>
</tr>
<c:forEach items="${requestScope.orderList}" var="order" varStatus="status">
<tr>
<td ><span id="orderid">${order.id}</span></td>
<td>
<c:forEach items="${requestScope.userList}" var="user" >
<c:if test="${order.useid ==  user.id}">
${user.username}
</c:if>
</c:forEach>
</td>
<td style="width: 240px"><fmt:formatDate value="${order.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </td>
<td>
${order.allmoney}
</td>
<td>
<c:if test="${order.status==0}">
未付款
</c:if>
<c:if test="${order.status==1}">
已付款
</c:if>
<c:if test="${order.status==2}">
取消
</c:if>
<c:if test="${order.status==4}">
订单完成
</c:if>
</td>
<td>
<c:choose>
<c:when test="${order.status==0 }">
<a href="#"><button type="button" class="btn btn-warning">取消订单</button></a>
</c:when>
<c:otherwise><a href="#"><button type="button" class="btn btn-warning">再次预定</button></a></c:otherwise>
</c:choose>

</td>


<td><button type="button" class="btn btn-warning" onclick="fanhui()" id="xiangqing">订单详情</button></td>
</tr>
</c:forEach>
</table>

<div id="huanye">
					共${pageVo.row }条数据&nbsp;&nbsp;
					共${pageVo.pageCount }页&nbsp;&nbsp;
					当前第${pageVo.pageNow }页&nbsp;&nbsp;
					<a href="quertOrder.action?pageNow=1" onclick="return query(this);">首页</a>&nbsp;&nbsp;
					<a href="quertOrder.action?pageNow=${pageVo.pageNow - 1 }" onclick="return query(this);">上一页</a>&nbsp;&nbsp;
					<a href="quertOrder.action?pageNow=${pageVo.pageNow + 1 }" onclick="return query(this);">下一页</a>&nbsp;&nbsp;
					<a href="quertOrder.action?pageNow=${pageVo.pageCount }" onclick="return query(this);">尾页</a>
					</div>

</div>

</div>

<!--详细信息  -->				
<div class="container" id="orderdetail" >
<h2 style="margin-left: 200px;">订单详情</h2>
<table class="table table-hover" id="detail" style="margin-left: -60px">
 

</table>
 <button type="button" class="btn btn-info" id="fanhui" onclick="fanhui()">返回</button>
</div>



<!--底部-->
			
			
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