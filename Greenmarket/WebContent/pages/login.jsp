<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login.jsp</title>
<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/reset.css" rel="stylesheet" type="text/css" />

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

		<div class="logoBar login_logo">
			<div class="comWidth">
				<div class="logo fl">
					<a href="#"><img src="<%=basePath%>/images/SheffieldLogo.png" width=140px
						height=59px alt="" /></a>
				</div>
				<h3 class="welcome_title">Login</h3>
			</div>
		</div>
		<!--logoBar结束-->
	</div>
	<!--headerBar结束-->

	<div class="loginBox">
		<div class="login_cont">
			<form action="http://localhost:8888/Market/LoginController" method="post">
				<ul class="login">
					<li class="l_tit">E-mail/Username</li>
					<li class="mb_10"><input type="text"
						class="login_input user_icon" name="username" /></li>
					<li class="l_tit">Password</li>
					<li class="mb_10"><input type="text"
						class="login_input password_icon" name="password" /></li>
					<li class="autoLogin"><a href="register.jsp">Register
							Now!!</a></li>
					<li><input type="button" value="" />
					<button class="login-btn">Sign-up</button></li>
					<li>&nbsp</li>
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