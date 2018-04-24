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
	<div class="action">
		<div>
			JSP MySQL简单的增删改查
		</div>
		<!--点击链接触发servlet执行相关操作-->
		<ul>
			<li><a href="/Green_Market/InsertServlet">Insert</a></li>
			<li><a href="/Green_Market/SelectServlet">Select</a></li>
			<li><a href="/Green_Market/UpdateServlet">Update</a></li>
			<li><a href="/Green_Market/DeleteServlet">Delete</a></li>
		</ul>
		
		<div class="result">
			<div>
				Result:
			</div>
			<!--servlet传递的参数，显示操作结果-->
			<div>${message}</div>
			<div>${studentid}</div>
			<div>${quiz}</div>
			<div>${exam}</div>
		</div>
	</div>
</body>
</html>