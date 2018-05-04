<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String serverPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>index.jsp</title>
<link rel="stylesheet" href="<%=basePath%>/css/main.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>/css/reset.css"
	type="text/css" />
<script src="<%=basePath%>/js/jquery-1.11.3.min.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

img {
	display: block;
}

.banner .con {
	position: absolute;
	left: 45%;
	bottom: 3%;
	z-index: 3;
}

.banner .con a {
	float: left;
	margin-right: 8px;
	display: block;
	width: 8px;
	height: 8px;
	border-radius: 100%;
	background: #000;
	z-index: 3;
}

.banner .con a.active {
	background: #fff;
}

.banner .u {
	width: 30px;
	height: 20px;
	background: rgba(255, 255, 255, 0.5);
	display: none;
}

.banner .left {
	position: absolute;
	top: 40%;
	left: 2%;
	z-index: 103;
}

.banner .right {
	position: absolute;
	top: 40%;
	right: 2%;
	z-index: 103;
}
</style>
</head>
<body>

	<div class="headerBar comWidth">
		<div class="topBar">
			<div class="comWidth">
				<div class="leftArea">
					<a href="#" class="collection">Welcome！</a>
				</div>
				<div class="rightArea">
					<a href="<%=basePath%>/pages/mypageStarter.jsp">My Home Page</a><i>|</i><a
						href="#">Where2eat</a><i>|</i><a href="login.jsp">Login</a><i>|</i><a
						href="register.jsp">Register</a>
				</div>
			</div>
		</div>
		<!--topBar结束-->

		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="#"><img src="<%=basePath%>/images/SheffieldLogo.png"
						width=140px height=59px alt="" /></a>
				</div>
				<div class="searchBox fl">
					<input type="text" class="search_text fl"> <input
						type="button" value="Search" class="search_btn fl" />
				</div>
				<div class="shopCar fr hide">
					<span class="shopText fl">shopCar</span> <span class="shopNum fl">0</span>
				</div>
			</div>
		</div>
		<!--logoBar结束-->

		<div class="navBox">
			<div class="comWidth">
				<div class="shopClass fl">
					<h3>
						Classification<i></i>
					</h3>
					<div class="shopClass_show hide2">
						<dl class="shopClass_item">
							<dt>
								<a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=commodity"
									class="b">Commodity</a> <a href="#" class="b"></a> <a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=commodity"
									class="aLink">More</a>
							</dt>
							<dd>
								<a href="#">Clothes</a> <a href="#">Make-up</a>
							</dd>
						</dl>

						<dl class="shopClass_item">
							<dt>
								<a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=accommodation"
									class="b">Accommodation</a> <a href="#" class="b"></a> <a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=accommodation"
									class="aLink">More</a>
							</dt>
							<dd>
								<a href="#">En-suit</a> <a href="#">Studio</a>
							</dd>
						</dl>

						<dl class="shopClass_item">
							<dt>
								<a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=e_product"
									class="b">Electricity</a> <a href="#" class="b"></a> <a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=e_product"
									class="aLink">More</a>
							</dt>
							<dd>
								<a href="#">Washing machine</a> <a href="#">Cleaner</a>
							</dd>
						</dl>

						<dl class="shopClass_item">
							<dt>
								<a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=tickets"
									class="b">Event</a> <a href="#" class="b"></a> <a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=tickets"
									class="aLink">More</a>
							</dt>
							<dd>
								<a href="#">Concert</a> <a href="#">Party</a>
							</dd>
						</dl>

						<dl class="shopClass_item">
							<dt>
								<a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=others"
									class="b">Odds</a> <a href="#" class="b"></a> <a
									href="<%=basePath%>/ProductInfoController?action=p_type&product_type=others"
									class="aLink">More</a>
							</dt>
							<dd>
								<a href="#">Transportation</a> <a href="#">Toy</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<!--navBar结束-->
		</div>
	</div>
	<!--headerBar结束-->
	<!--  
    <div class="banner comWidth clearfix">
        <div class="banner_bar banner_big">
            <ul class="imgBox">
                <li><a href="#"><img src="../banner/banner_01.gif"></a></li>
                <li><a href="#"><img src="../banner/banner_02.gif"></a></li>
            </ul>
            <div class="imgNum">
                <a href="#" class="active"></a>
                <a href="#"></a>
            </div>
        </div>
    </div>
    -->
	<div class="banner comWidth clearfix id="">
		<div class="banner_bar banner_big">
			<ul class="imgBox">
				<li><a href="#"><img
						src="<%=basePath%>/banner/banner.jpg" alt="banner"
						id="bannerImg1"></a></li>
				<li><a href="#"><img
						src="<%=basePath%>/banner/green_market.jpg" alt="banner"
						id="bannerImg2"></a></li>
				<li><a href="#"><img
						src="<%=basePath%>/banner/green_market2.jpg" alt="banner"
						id="bannerImg3"></a></li>
			</ul>
			<div class="con"></div>

			<div class="u left">left</div>
			<div class="u right">right</div>
		</div>
	</div>
	<script type="text/javascript">
		var index = 0;
		var imgnum = $('.banner ul li').length;
		var nmun = '';
		var imgwidth = $('.banner ul li').width();
		var allimgwidth = imgwidth * imgnum;
		$('.banner ul').css('width', allimgwidth);

		$('.banner').hover(function() {
			clearInterval(p);
			$('.banner .u').fadeIn();
		}, function() {
			pic();
			$('.banner .u').fadeOut();
		});

		function pic() {

			p = setInterval(function() {
				index++;

				if (index >= imgnum) {
					index = 0;
				}

				selectimg(index);

			}, 3000);

		}

		function selectimg(index) {
			$('.banner ul').animate({
				'margin-left' : '-' + imgwidth * index + 'px'
			}, 600);
			$('.con a').eq(index).addClass('active').siblings('a').removeClass(
					'active');
		}

		$('.banner .left').click(function() {
			index -= 1;
			if (index < 0) {
				index = imgnum - 1;
			}
			selectimg(index);

		});

		$('.banner .right').click(function() {
			index += 1;
			if (index > imgnum - 1) {
				index = 0;
			}
			selectimg(index);

		});

		for (var ni = 0; ni < imgnum; ni++) {
			nmun += "<a href='javascript:;'></a>";
		}
		$('.banner .con').html(nmun);
		$('.banner .con a').eq(0).addClass('active');

		$('.con a').each(
				function(i) {
					$(this).click(
							function() {
								index = i;
								$('.banner ul').animate({
									'margin-left' : '-' + imgwidth * i + 'px'
								}, 600);
								$('.con a').eq(index).addClass('active')
										.siblings('a').removeClass('active');
							});
				});

		pic();
	</script>
	<div class="shopTit comWidth">
		<span class="icon"></span>
		<h3>Random List</h3>
		<a href="#" class="more">More>></a>
	</div>
	<div class="shopList comWidth clearfix">
		<div class="leftArea">
			<div class="banner_bar banner_sm">
				<ul class="imgBox">

					<li><a href="#"><img src="<%=basePath%>/banner/random.jpg"></a></li>
					<li><a href="#"><img
							src="<%=basePath%>/banner/food_banner_sm_01.png"></a></li>
				</ul>
				<div class="imgNum hide">
					<a href="#" class="active"></a> <a href="#"></a>
				</div>
			</div>
		</div>
		<div class="rightArea">
			<!--  
        		<div>${productInfos}</div>
        	-->

			<div class="shopList_top ">
				<c:forEach items="${random_productInfos}" var="productInfo"
					begin="1" end="4" step="1">
					<div class="shop_item">
						<div class="shop_img">
							<a
								href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
								src="<%=serverPath%>${productInfo.getProductPicture() }" alt=""></a>
						</div>
						<h3>${productInfo.getProductName() }</h3>
						<p>${productInfo.getProductPrice() }</p>
					</div>
				</c:forEach>
			</div>
			<div class="shopList_sm clearfix">
				<c:forEach items="${random_productInfos}" var="productInfo"
					begin="1" end="4" step="1">
					<div class="shopItem_sm">
						<div class="shopItem_smImg">
							<a
								href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
								src="<%=serverPath%>${productInfo.getSellerPicture() }"></a>
						</div>
						<div class="shopItem_text">
							<p>${productInfo.getSellerName() }</p>
							<h3>${productInfo.getSellerAddress() }</h3>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="shopTit comWidth">
		<span class="icon"></span>
		<h3>Latest update</h3>
		<a href="#" class="more">More>></a>
	</div>
	<div class="shopList comWidth clearfix">
		<div class="leftArea">
			<div class="banner_bar banner_sm">
				<ul class="imgBox">

					<li><a href="#"><img src="<%=basePath%>/banner/latest.png"></a></li>
					<li><a href="#"><img
							src="<%=basePath%>/banner/food_banner_sm_01.png"></a></li>
				</ul>
				<div class="imgNum hide">
					<a href="#" class="active"></a> <a href="#"></a>
				</div>
			</div>
		</div>
		<div class="rightArea">
			<!--  
        		<div>${productInfos}</div>
        	-->

			<div class="shopList_top ">
				<c:forEach items="${latest_productInfos}" var="productInfo"
					begin="0" end="3" step="1">
					<div class="shop_item">
						<div class="shop_img">
							<a
								href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
								src="${productInfo.getProductPicture() }" alt=""></a>
						</div>
						<h3>${productInfo.getProductName() }</h3>
						<p>${productInfo.getProductPrice() }</p>
					</div>
				</c:forEach>
			</div>
			<div class="shopList_sm clearfix">
				<c:forEach items="${latest_productInfos}" var="productInfo"
					begin="0" end="3" step="1">
					<div class="shopItem_sm">
						<div class="shopItem_smImg">
							<a
								href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
								src="${productInfo.getSellerPicture() }"></a>
						</div>
						<div class="shopItem_text">
							<p>${productInfo.getSellerName() }</p>
							<h3>${productInfo.getSellerAddress() }</h3>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>
			<a href="#">Feedback</a><i>|</i><a href="#">Privacy & Website
				Policies</a><i>|</i> <a href="#">Terms & Conditions</a><i>|</i> <a
				href="#">About us</a><i>|</i>Telepphone：400-675-1234
		</p>
		<p>Copyright &copy; GreenMarket</p>
	</div>
</body>
</html>