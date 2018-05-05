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
<title>AddProduct.jsp</title>
<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/reset.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="headerBar">
		<div class="topBar">
			<div class="comWidth">
				<div class="leftArea">
					<a href="#" class="collection">收藏慕课</a>
				</div>
				<div class="rightArea">
					欢迎来到慕课网!<a href="#">[登录]</a><a href="#">[免费注册]</a>
				</div>
			</div>
		</div>
		<!--topBar结束-->

		<div class="logoBar red_logo">
			<div class="comWidth">
				<div class="logo fl">
					<a href="#"><img src="<%=basePath%>/images/SheffieldLogo.png"
						width=140px height=59px alt="" /></a>
				</div>
				<h3 class="welcome_title">Welcome to registation</h3>
			</div>
		</div>
		<!--logoBar结束-->
	</div>
	<!--headerBar结束-->

	<div class="regBox">
		<div class="login_cont">
			<form method="post" action='/Market/ProductInfoController'
				name="addproduct">
				<ul class="login">
					<li><span class="reg_item"><i>*</i>Id:</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="p_id"
								value="<c:out value="${productInfo.getProductId()}" />"
								readonly="true" />
						</div></li>
					<li><span class="reg_item"><i>*</i>Name:</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="p_name"
								value="<c:out value="${productInfo.getProductName()}" />" />
						</div></li>
					<li><span class="reg_item"><i>*</i>Price:</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="p_price"
								value="<c:out value="${productInfo.getProductPrice()}" />" />
						</div></li>
					<li><span class="reg_item"><i>*</i>Picture:</span>
						<div class="input_item">
							<br> <input type="text" class="login_input user_icon"
								value="<c:out value="${productInfo.getProductPicture()}" />"
								name="p_picture" />
							<div class="browseComputer.button">
								<button>Browse My Computer</button>
							</div>
							<div class="browseComputer.show hide">
								<input type="text"
									style="width: 120px; height: 120px; border: solid 1px grey">
							</div>
						</div></li>
					<li><span class="reg_item"><i>*</i>Type:</span> <br> <select
						name="p_type"
						value="<c:out value="${productInfo.getProductType()}" />">
							<option value="commodity">Commodity</option>
							<option value="ticket">Ticket</option>
							<option value="accommodation">Accommodation</option>
							<option value="e-product">e-product</option>
							<option value="others">others</option>
					</select></li>

					<li><span class="reg_item"><i>*</i>Description:</span> <textarea
							name="p_description" rows="10" cols="10"
							style="width: 300px; height: 100px; border: solid 1px grey; resize: none;"
							value="<c:out value="${productInfo.getProductDescription()}" />"></textarea></li>
					<li>&nbsp</li>
					<li><input type="button" value="" />
						<button class="login-btn">Submit</button></li>

				</ul>
			</form>

		</div>
		<a class="reg_link" href="#" hidden></a>
	</div>
	<div class="hr_15" hidden></div>
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