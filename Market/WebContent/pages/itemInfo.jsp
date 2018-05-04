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
<title>itemInfo.jsp</title>
<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/reset.css" rel="stylesheet"
	type="text/css" />

</head>
<body class="grey">
	<div class="headerBar">
		<div class="topBar">
			<div class="comWidth">
				<div class="leftArea">
					<a href="#" class="collection">Welcome！</a>
				</div>
				<div class="rightArea">
					<a href="#">Where2eat</a><i>|</i><a href="login.jsp">Login</a><i>|</i><a
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
				<div class="shopCar fr">
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
				</div>
			</div>
		</div>
		<!--navBar结束-->
	</div>
	<!--headerBar结束-->
	<div class="userPosition comWidth">
		<strong><a href="#">Index</a></strong> <span>&nbsp;&gt;&nbsp;</span> <em>Detail</em>
	</div>
	<div class="description_info comWidth">
		<div class="description clearfix">
			<div class="leftArea paddingtop70">
				<div class="description_imgs">
					<div class="big">
						<img src="<%=serverPath%>${productInfoss.getProductPicture()}" alt="">
					</div>
				</div>
			</div>
			<div class="rightArea paddingtop70">
				<div class="des_content ">
					<h3 class="des_content_tit">${productInfoss.getProductName()}</h3>
					<div class="dl clearfix">
						<div class="dt">Price:</div>
						<div class="dd">
							<span class="des_money"><em>£</em>${productInfoss.getProductPrice()}</span>
						</div>
					</div>
					<div class="dl clearfix">
						<div class="dt">Address:</div>
						<div class="dd">
							<span class="hg"><i class="hg_icon"></i>${productInfoss.getSellerAddress()}</span>
						</div>
					</div>
					<div class="des_position">
						<div class="des_select">
							Description:&nbsp<span>${productInfoss.getProductDescription()}</span>
						</div>

						<div class="notes hide">Notes：The goods sold will not be
							returned</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="hr_15"></div>
	<div class="des_info comWidth clearfix">
		<div class="leftArea">
			<div class="recommend">
				<h3 class="tit">Random</h3>
				<c:forEach items="${random_productInfos}" var="productInfo"
					begin="0" end="2" step="1">
					<div class="item">
						<div class="item_cont">
							<div class="img_item">
								<a
									href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
									src="<%=serverPath%>${productInfo.getProductPicture() }" alt=""></a>
							</div>
							<p>
								<a href="#">${productInfo.getProductName() }</a>
							</p>
							<p class="money">£ ${productInfo.getProductPrice() }</p>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="hr_15"></div>
			<div class="recommend">
				<h3 class="tit">Latest</h3>
				<c:forEach items="${latest_productInfos}" var="productInfo"
					begin="0" end="2" step="1">
					<div class="item">
						<div class="item_cont">
							<div class="img_item">
								<a
									href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
									src="<%=serverPath%>${productInfo.getProductPicture() }" alt=""></a>
							</div>
							<p>
								<a href="#">${productInfo.getProductName() }</a>
							</p>
							<p class="money">${productInfo.getProductPrice() }</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="rightArea">
			<div class="des_infoContent">
				<ul class="des_tit">
					<li class="active"><span>product introduce</span></li>
				</ul>
				<div class="ad hide">
					<a href="#"><img src="<%=basePath%>/images/ad.jpg"></a>
				</div>
				<div class="info_text">
					<div class="info_tit">
						<h3>Details</h3>
						<h4>and description</h4>
					</div>

					<c:forEach items="${productPictures}" var="productPicture">
						<img src="<%=serverPath%>${productPicture}" class="center">
						<div class="hr_15"></div>
					</c:forEach>
					<c:forEach items="${productInfos}" var="productInfo">
						<p>${productInfo}</p>
						<div class="hr_15"></div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class="hr_15"></div>
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