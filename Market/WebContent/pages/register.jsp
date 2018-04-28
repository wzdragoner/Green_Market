<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>register.jsp</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css" type="text/css" />
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
        </div><!--topBar结束-->

        <div class="logoBar red_logo">
            <div class="comWidth">
                <div class="logo fl">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/logo.jpg" alt="慕课网"/></a>
                </div>
                <h3 class="welcome_title">欢迎注册</h3>
            </div>
        </div><!--logoBar结束-->
    </div><!--headerBar结束-->

    <div class="regBox">
        <div class="login_cont">
        	<form method="post" action='UserInfoController' name="adduser">
            	<ul class="login">
            	<li>
                	<span class="reg_item">
                		<i>*</i>id:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			class="login_input user_icon" 
                			name="user_id"
            				value="<c:out value="${userInfo.getUserId()}" />" 
            				readonly="true"
            			/>
                	</div>
                </li>
                <li>
                	<span class="reg_item">
                		<i>*</i>用户名:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			   class="login_input user_icon"
                			   name = "user_name"
                			   value = "<c:out value = "${userInfo.getUserName()}" />" 
                		/>
                	</div>
                </li>
                <li>
                	<span class="reg_item">
                		<i>*</i>密码:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			   class="login_input user_icon"
                			   name = "user_password"
                			   value = "<c:out value = "${userInfo.getUserPassword()}" />"
                		/>
                	</div>
                </li>
                <li>
                	<span class="reg_item">
                		<i>*</i>邮箱:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			   class="login_input user_icon"
                			   name = "user_mail"
                			   value = "<c:out value = "${userInfo.getUserMail()}" />"
                		/>
                	</div>
                </li>
                <li>
                	<span class="reg_item">
                		<i>*</i>地址:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			   class="login_input user_icon"
                			   name = "user_add"
                			   value = "<c:out value = "${userInfo.getUserAdd()}" />" 
                		/>
                	</div>
                </li>
                <li>
                	<span class="reg_item">
                		<i>*</i>电话:
                	</span>
                	<div class="input_item">
                		<input type="text" 
                			   class="login_input user_icon"
                			   name = "user_tel"
                			   value = "<c:out value = "${userInfo.getUserTel()}" />"
                		/>
                	</div>
                </li>
                <li class="autoLogin"><span class="reg_item"><i>&nbsp;</i></span><input type="checkbox" class="checked" id="t1"/><label for="t1">我已阅读并同意</label></li>
                <li><span class="reg_item"><i>&nbsp;</i></span><input type="submit" value="" class="login_btn"/></li>
            </ul>
            </form>
            
        </div>
        <a class="reg_link hide" href="#"></a>
    </div>
    <div class="hr_15"></div>
    <div class="footer">
        <p><a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i> <a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
        <p>Copyright &copy; 2006 - 2014 慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
    </div>
</body>
</html>