<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>userinfo</title>
</head>
<body>
	<form method="post" action='UserInfoController' name="add user">
		User ID : <input type="text" name="user_id"
			value="<c:out value="${userInfo.getUserId()}" />" readonly="true" />
		<br /> User Name: <input type="text" name="user_name"
			value="<c:out value = "${userInfo.getUserName()}" />" /><br /> User
		Password: <input type="text" name="user_password"
			value="<c:out value = "${userInfo.getUserPassword()}" />" /><br />
		User Mail: <input type="text" name="user_mail"
			value="<c:out value = "${userInfo.getUserMail()}" />" /><br /> User
		Add: <input type="text" name="user_add"
			value="<c:out value = "${userInfo.getUserAdd()}" />" /><br /> User
		Tel: <input type="text" name="user_tel"
			value="<c:out value = "${userInfo.getUserTel()}" />" /><br /> <input
			type="submit" value="Submit" />
	</form>
</body>
</html>