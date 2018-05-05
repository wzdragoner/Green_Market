<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mypage.jsp</title>
<link href="<%=basePath%>/css/main.css"
	rel="stylesheet" type="text/css" />
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
					<a href="#">Where2eat</a><i>|</i><a href="#">Index</a><i>|</i><a
						href="#">My Page</a>
				</div>
			</div>
		</div>
		<!--topBar结束-->

		<div class="logoBar red_logo">
			<div class="comWidth">
				<div class="logo fl">
					<a href="#"><img
						src="<%=basePath%>/images/SheffieldLogo.png"
						width=140px height=59px alt="" /></a>
				</div>
				<h3 class="welcome_title">My Page</h3>
			</div>
		</div>
		<!--logoBar结束-->
	</div>
	<!--headerBar结束-->

	<div class="regBox">
		<div class="show_mydetail_top_button_1">
			<a href="#d1"></a>
		</div>
		<div class="show_mydetail_top_button_1">
			<a href="#d1">My shop history</a>
		</div>
		<div class="show_mydetail_top_button_1">
		
		</div>

		<div class="login_cont" id="d2">
			<c:forEach items="${transactions}" var="transaction">
				<div class="products_list screening_list_more clearfix">

					<div class="item">
						<div class="item_cont1">
							<p class="psecond">
								<span class="money">Product Name:</span> <span class="pcomment">${transaction.getProduct_name() }</span>
							</p>
							<p class="psecond">
								<span class="money">Product Price:</span> <span class="pcomment">${transaction.getProduct_price() }</span>
							</p>
						</div>
					</div>
					<div class="item">
						<div class="item_cont1">
							<a href="#"><img src="${transaction.getProduct_picture() }"
								alt="" /></a>
						</div>
					</div>
					<div class="item">
						<div class="item_cont1">
							<p class="psecond">
								<span class="money">Seller Name:</span> <span class="pcomment">${transaction.getSeller_name() }</span>
							</p>
							<p class="psecond">
								<span class="money">Buyer name:</span> <span class="pcomment">${transaction.getBuyer_name() }</span>
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
			<div class="hr_25"></div>
			<div class="rightArea page hide">
				<a href="#">上一页</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <span
					class="hl">...</span> <a href="#">200</a> <a href="#">下一页</a> <span
					class="morePage">共200页，到第&nbsp;</span> <input type="text" />&nbsp;页&nbsp;
				<input type="button" value="确定" />
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
	</div>
</body>
</html>