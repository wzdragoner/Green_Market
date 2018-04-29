<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mypage.jsp</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<link href="../css/reset.css" rel="stylesheet" type="text/css" />
<style>
#d1 {
	display: block;
	z-index: 4;
}

#d2 {
	display: block;
	z-index: 3;
}

#d3 {
	display: block;
	z-index: 3;
}

#d1:target {
	z-index: 5;
}

#d2:target {
	z-index: 5;
}

#d3:target {
	z-index: 5;
}
</style>
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
					<a href="#"><img src="../images/SheffieldLogo.png" width=140px
						height=59px alt="慕课网" /></a>
				</div>
				<h3 class="welcome_title">My Page</h3>
			</div>
		</div>
		<!--logoBar结束-->
	</div>
	<!--headerBar结束-->

	<div class="regBox">
		<div class="show_mydetail_top_button_1">
			<a href="#d1">My Details</a>
		</div>
		<div class="show_mydetail_top_button ">
			<a href="#d2">Purchase History</a>
		</div>
		<div class="show_mydetail_top_button ">
			<a href="#d3">My stuff</a>
		</div>
		<div class="login_cont " id="d1">
			<ul class="login">
				<li>&nbsp</li>
				<li><span class="reg_item"><i>*</i>Username:</span>
				<div class="input_item">
						<input type="text" name="country" value="" readonly="readonly" />
					</div></li>
				<li><span class="reg_item"><i>*</i>Password:</span>
				<div class="input_item">
						<input type="text" name="country" value="" readonly="readonly" />
					</div></li>
				<li><span class="reg_item"><i>*</i>E-mail:</span>
				<div class="input_item">
						<input type="text" name="country" value="" readonly="readonly" />
					</div></li>
				<li><span class="reg_item"><i>*</i>Address:</span>
				<div class="input_item">
						<input type="text" name="country" value="" readonly="readonly" />
					</div></li>
				<li><span class="reg_item"><i>*</i>Telephone:</span>
				<div class="input_item">
						<input type="text" name="country" value="" readonly="readonly" />
					</div></li>
				<li>
					<button class="login-btn">Change Details</button>
				</li>
			</ul>
		</div>

		<div class="login_cont" id="d2">
			<div class="products_list screening_list_more clearfix">
				<div class="item">
					<div class="item_cont1">
						<a href="#"><img
							src="http://pic.35pic.com/normal/03/76/89/5713677_174509363484_2.jpg"
							alt="" /></a>
					</div>
				</div>
				<div class="item">
					<div class="item_cont1">
						<p>
							<a href="#">Product Name</a>
						</p>
						<p>
							<a href="#">Product type</a>
						</p>
						<p class="psecond">
							<span class="money">Price</span> <span class="pcomment">2</span>
						</p>
					</div>
				</div>
				<div class="item">
					<div class="item_cont1">
						<p>
							<a href="#">date</a>
						</p>
						<p>
							<a href="#">address</a>
						</p>
						<p class="psecond">
							<span class="money">seller name</span> <span class="pcomment">haha</span>
						</p>
					</div>
				</div>
			</div>
			<div class="hr_25"></div>
			<div class="rightArea page hide">
				<a href="#">上一页</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <span
					class="hl">...</span> <a href="#">200</a> <a href="#">下一页</a> <span
					class="morePage">共200页，到第&nbsp;</span> <input type="text" />&nbsp;页&nbsp;
				<input type="button" value="确定" />
			</div>
		</div>

		<div class="login_cont" id="d3"></div>

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