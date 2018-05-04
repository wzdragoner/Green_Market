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
<title>filter.jsp</title>
<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/reset.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
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
					<a href="#"><img
						src="<%=basePath%>/images/SheffieldLogo.png"
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
	<div class="hr_15"></div>
	<div class="comWidth clearfix products">
		<div class="leftArea">
			<div class="leftNav vertical">
				<h3 class="nav_title">More Search Detail</h3>
				<div class="nav_cont">
					<h3>ProductType</h3>
					<ul class="navCont_list  clearfix">
						<li><a
							href="<%=basePath%>/ProductInfoController?action=p_type&product_type=commodity">Commodity</a></li>
						<li><a
							href="<%=basePath%>/ProductInfoController?action=p_type&product_type=tickets">Ticket</a></li>
						<li><a
							href="<%=basePath%>/ProductInfoController?action=p_type&product_type=accommodation">Accommodation</a></li>
						<li><a
							href="<%=basePath%>/ProductInfoController?action=p_type&product_type=e_product">E-products</a></li>
						<li><a
							href="<%=basePath%>/ProductInfoController?action=p_type&product_type=others">Others</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="rightArea">
			<div class="screening_box hide">
				<dl class="screening clearfix">
					<dt>tel</dt>
					<dd class="limit">
						<a href="#" class="active">anything</a>
					</dd>
					<dd class="screeing_list">
						<ul class="clearfix">
							<li><a href="#">Sumsang</a></li>
							<li><a href="#">apple</a></li>
							<li><a href="#">Huawei</a></li>
							<li><a href="#">apple</a></li>
							<li><a href="#">Huawei</a></li>
						</ul>
					</dd>
				</dl>
				<dl class="screening clearfix">
					<dt>tel</dt>
					<dd class="limit">
						<a href="#" class="active">anything</a>
					</dd>
					<dd class="screeing_list">
						<ul class="clearfix">
							<li><a href="#">Sumsang</a></li>
							<li><a href="#">apple</a></li>
							<li><a href="#">Huawei</a></li>
							<li><a href="#">apple</a></li>
							<li><a href="#">Huawei</a></li>
						</ul>
					</dd>
				</dl>
				<dl class="screening clearfix">
					<dt>more</dt>
					<dd class="screeing_list">
						<div class="screen_more">
							<a href="#">Sumsang</a>
						</div>
						<div class="screen_more">
							<a href="#">Sumsang</a>
						</div>
					</dd>
				</dl>
			</div>
			<div class="hr_15"></div>
			<div class="addInfo">
				<div class="address">
					<span class="add_text">Product Filter</span>
					<div class="select hide">
						<h3>Product details</h3>
						<span></span>
						<ul class="show_select">
							<li>shangdi</li>
							<li>wukesong</li>
							<li>wukesong</li>
						</ul>
					</div>
				</div>
				<div class="fr screen_text hide">
					<span class="check"> <input type="checkbox" id="check" /><label
						for="check">youhuo</label>
					</span> <span class="shop_number"> gong<em>111</em>jian
					</span>
				</div>
			</div>
			<div class="hr_15"></div>
			<div class="products_list screeing_list_more clearfix">
				<c:forEach items="${productInfos}" var="productInfo">
					<div class="item">
						<div class="item_cont">
							<div class="img_item">
								<a
									href="<%=basePath%>/ProductDetailController?action=list&product_id=<c:out value="${productInfo.getProductId() }"/>"><img
									src="<%=serverPath%>${productInfo.getProductPicture() }" alt=""></a>
							</div>
							<p>
								<a href="#">Name: ${productInfo.getProductName() } <br>
									Type: ${productInfo.getProductType() }
								</a>
							</p>
							<p class="money">£${productInfo.getProductPrice() }</p>
							<p class="addCar">
								<a href="#">Contact Seller</a>
							</p>
						</div>
					</div>
				</c:forEach>

			</div>
			<!--分页-->
			<div class="hr_15"></div>
			<div class="page">
				<a href="#">last</a><a href="#">1</a><a href="#">2</a><a href="#">3</a>
				<a href="#">4</a><a href="#">5</a><a href="#">6</a><span class="hl">...</span>
				<a href="#">200</a><a href="#">next</a><span class="morePage">200
					pages,to page:</span> <input type="text" class="pageNum" /><span
					class="ye">page</span><input type="button" value="go" class="page_btn" />
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