<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>all users</title>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>user_id</th>
				<th>user_name</th>
				<th>user_password</th>
				<th>user_mail</th>
				<th>user_add</th>
				<th>user_tel</th>
				<th colspan=2>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userInfos}" var="userInfo">
				<tr>
					<td><c:out value="${userInfo.getUserId()}" /></td>
					<td><c:out value="${userInfo.getUserName()}" /></td>
					<td><c:out value="${userInfo.getUserPassword()}" /></td>
					<td><c:out value="${userInfo.getUserMail()}" /></td>
					<td><c:out value="${userInfo.getUserAdd()}" /></td>
					<td><c:out value="${userInfo.getUserTel()}" /></td>
					<td><a
						href="../UserInfoController?action=edit&user_id=<c:out value="${userInfo.getUserId()}"/>">Update</a></td>
					<td><a
						href="../UserInfoController?action=delete&user_id=<c:out value="${userInfo.getUserId()}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="../UserInfoController?action=insert">Add User</a>
	</p>
</body>
</html>