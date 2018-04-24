<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MySQL Action</title>
<style type="text/css">

	.action {
		width: 500px;
		height: 200px;
		margin: 0 auto;
		background: rgba(234, 233, 233, 0.22);
		margin-top: 50px;
	}
	.result {
		width: 500px;
		height: 100px;
		margin: 0 auto;
		background: rgba(234, 233, 233, 0.22);
		margin-top: 50px;
	}
	.action li {
		list-style: none;
		padding-top: 20px;
	}
</style>
</head>
<body>
	<form name="Insert" method="post" action="/Green_Market/InsertServlet">
		<table>
			<tr>
            	<td>studentid:</td>
            	<td><input  type="text" name="studentid"/></td>
			</tr>
			<tr>
            	<td>quiz:</td>
            	<td><input  type="text" name="quiz"/></td>
			</tr>
			<tr>
            	<td>exam:</td>
            	<td><input  type="text" name="exam"/></td>
			</tr>
		</table>
		<input type="submit" value="Insert into my DB">
	</form>
	<form name="Insert" method="post" action="/Green_Market/SelectServlet">
		<table>
			<tr>
            	<td>studentid:</td>
            	<td><input  type="text" name="studentid"/></td>
			</tr>
			<tr>
            	<td>quiz:</td>
            	<td><input  type="text" name="quiz"/></td>
			</tr>
			<tr>
            	<td>exam:</td>
            	<td><input  type="text" name="exam"/></td>
			</tr>
		</table>
		<input type="submit" value="Select from my DB">
	</form>      
	<div class="action">
		<div>
			JSP MySQL CURD
		</div>
		<div class="result">
			<div>
				Result:
			</div>
			<!--servlet传递的参数，显示操作结果-->
			<div>${count}</div>
			<div>${message}</div>
			<div>${studentid}</div>
			<div>${quiz}</div>
			<div>${exam}</div>
		</div>
	</div>
</body>
</html>