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
<title>register.jsp</title>

<link rel="stylesheet" href="<%=basePath%>/css/main.css" type="text/css" />
<link rel="stylesheet"
	href="<%=basePath%>/css/reset.css"
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
				<h3 class="welcome_title">Welcome to registration</h3>
			</div>
		</div>
		<!--logoBar结束-->
	</div>
	<!--headerBar结束-->

	<div class="regBox">
		<div class="login_cont">
			<form method="post" action='/Market/UserInfoController'
				name="adduser">
				<ul class="login">
					<li><span class="reg_item hide"> <i>*</i>id:
					</span>
						<div class="input_item hide">
							<input type="text" class="login_input user_icon" name="user_id"
								value="<c:out value="${userInfo.getUserId()}" />"
								readonly="true" />
						</div></li>
					<li><span class="reg_item"> <i>*</i>Username:
					</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="user_name"
								value="<c:out value = "${userInfo.getUserName()}" />" />
						</div></li>
					<li><span class="reg_item"> <i>*</i>Password:
					</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon"
								name="user_password"
								value="<c:out value = "${userInfo.getUserPassword()}" />" />
						</div></li>

					<li><span class="reg_item"> <i>*</i>E-mail:
					</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="user_mail"
								value="<c:out value = "${userInfo.getUserMail()}" />" />
						</div></li>
					<li><span class="reg_item"> <i>*</i>Address:
					</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="user_add"
								value="<c:out value = "${userInfo.getUserAdd()}" />" />
						</div></li>
					<li><span class="reg_item"> <i>*</i>Telephone:
					</span>
						<div class="input_item">
							<input type="text" class="login_input user_icon" name="user_tel"
								value="<c:out value = "${userInfo.getUserTel()}" />" />
						</div></li>
					<li class="autoLogin"><span class="reg_item"><i>&nbsp;</i></span><input
						type="checkbox" class="checked" id="t1" /><label for="t1">I
							agree with condition</label></li>
					<li><input type="button" value="" />
					<button class="login-btn">Submit</button></li>
				</ul>
			</form>

		</div>
		<a class="reg_link hide" href="#"></a>
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