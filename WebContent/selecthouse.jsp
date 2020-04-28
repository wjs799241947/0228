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
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<link rel="stylesheet" type="text/css" href="css/superfish.css" />
		<link rel="stylesheet" type="text/css" href="css/responsive.css" />
		
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		
		<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css" />
		<script src="jquery/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap-3.3.7/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		
	<script type="text/javascript">
	//JS中调用表单提交
	function query(aTag){
		var queryForm = document.getElementById("queryForm");
		queryForm.action = aTag.href;
	//	alert(queryForm.action);
		queryForm.submit();
	
		return false;
	}
	
	
</script>
		
		<style type="text/css">
		#huanye{
	    font:normal 20px "微软雅黑" ;
	    margin-bottom: 40px;
	    margin-left: 300px;
	}
		
		</style>
		
		 
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

									<form class="bs-example bs-example-form" role="form" id="queryForm" action="queryBylocal.action?pageNow=${pageVo.pageNow == null ? 1 : pageVo.pageNow}" method="post">
									<div class="input-group input-group-lg" >
			                         <input type="text" class="form-control" placeholder="输入目的地" value="${requestScope.address}" name="address">
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
							<a href="news.html" class="level-top"><span>小猪新闻</span></a>
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



			
				<div class="container" style="margin-top: 20px;">
					<div class="page-title category-title">
						<span style="font-size: 30px;font-weight: bold;">搜索结果&nbsp;&nbsp;</span><span style="font-size: 20px;">以下是符合您要求的房源!</span>
					</div>
					
					
					<ul class="products-grid row"> 
					<c:forEach items="${houseList}" var="house" varStatus="status" begin="0" end="7" step="1">
						<li class="item col-xs-3 first"> 
							<div class="product-container">
								<a href="" class="product-image">
									<img src="/file/${house.img}" style="width: 300px;height: 200px;"/></a>
								<div class="product-shop">
									<h3 class="product-name"><a href="" title="JBL LSR4312SP 12 INCH SUBWOOFER">${house.title}
                            </a></h3>

									<div class="price-box">
										<span class="regular-price"><span class="price">${house.price}起</span> </span>
									</div>

									<div class="actions">
										<button type="button" title="Add to Cart" class="button btn-cart">
                                    <span><span><a href="pay.action?houseId=${house.id}">预定</a></span></span></button>
									</div>
								</div>
								<div class="label-product">
								</div>
								<div class="clear"></div>
							</div>
						</li>
						
						</c:forEach>
					</ul>
					
					<div id="huanye">
					共${pageVo.row }条数据&nbsp;&nbsp;
					共${pageVo.pageCount }页&nbsp;&nbsp;
					当前第${pageVo.pageNow }页&nbsp;&nbsp;
					<a href="queryBylocal.action?pageNow=1" onclick="return query(this);">首页</a>&nbsp;&nbsp;
					<a href="queryBylocal.action?pageNow=${pageVo.pageNow - 1 }" onclick="return query(this);">上一页</a>&nbsp;&nbsp;
					<a href="queryBylocal.action?pageNow=${pageVo.pageNow + 1 }" onclick="return query(this);">下一页</a>&nbsp;&nbsp;
					<a href="queryBylocal.action?pageNow=${pageVo.pageCount }" onclick="return query(this);">尾页</a>
					</div>

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