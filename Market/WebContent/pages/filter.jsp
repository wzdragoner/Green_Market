<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>filter.jsp</title>
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/reset.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="headerBar">
        <div class="topBar">
            <div class="comWidth">
                <div class="leftArea">
                    <a href="#" class="collection">Welcome！</a>
                </div>
                <div class="rightArea">
                   <a href="#">Where2eat</a><i>|</i><a href="login.jsp">Login</a><i>|</i><a href="register.jsp">Register</a>
                </div>
            </div>
        </div><!--topBar结束-->

        <div class="logoBar">
            <div class="comWidth">
                <div class="logo fl">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/SheffieldLogo.png" width=140px height=59px alt="慕课网"/></a>
                </div>
                <div class="searchBox fl">
                    <input type="text" class="search_text fl" >
                    <input type="button" value="Search" class="search_btn fl"/>
                </div>
                <div class="shopCar fr">
                    <span class="shopText fl">shopCar</span>
                    <span class="shopNum fl">0</span>
                </div>
            </div>
        </div><!--logoBar结束-->

        <div class="navBox">
            <div class="comWidth">
                <div class="shopClass fl">
                   <h3>Classification<i></i></h3>
                    <div class="shopClass_show hide">
                        <dl class="shopClass_item">
                            <dt><a href="#" class="b">手机</a> <a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a></dt>
                            <dd><a href="#">荣耀</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                        </dl>

                        <dl class="shopClass_item">
                            <dt><a href="#" class="b">手机</a> <a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a></dt>
                            <dd><a href="#">荣耀</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                        </dl>

                        <dl class="shopClass_item">
                            <dt><a href="#" class="b">手机</a> <a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a></dt>
                            <dd><a href="#">荣耀</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                        </dl>

                        <dl class="shopClass_item">
                            <dt><a href="#" class="b">手机</a> <a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a></dt>
                            <dd><a href="#">荣耀</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                        </dl>

                        <dl class="shopClass_item">
                            <dt><a href="#" class="b">手机</a> <a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a></dt>
                            <dd><a href="#">荣耀</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                        </dl>
                    </div>
                    <div class="shopClass_list hide">
                        <div class="shopClass_cont">
                            <dl class="shopList_item">
                                <dt>电脑装机</dt>
                                <dd>
                                    <a href="#">笔记本</a><a href="#">超极本</a><a href="#">上网本</a><a href="#">平板电脑</a><a href="#">台式机</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="shopClass_cont">
                            <dl class="shopList_item">
                                <dt>电脑配件</dt>
                                <dd>
                                    <a href="#">CPU</a><a href="#">硬盘</a><a href="#">SSD固态硬盘</a><a href="#">内存</a><a href="#">显示器</a><a href="#">智能显示器</a><a href="#">主板</a><a href="#">显卡</a><a href="#">机箱</a><a href="#">电源</a><a href="#">散热器</a><a href="#">刻录机/光驱</a><a href="#">声卡</a><a href="#">拓展卡</a><a href="#">服务器配件</a><a href="#">DIY小附件</a><a href="#">装机/配件安装</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="shopClass_cont">
                            <dl class="shopList_item">
                                <dt>整机附件</dt>
                                <dd>
                                    <a href="#">电脑包</a><a href="#">电脑桌</a><a href="#">电池</a><a href="#">电源适配器</a><a href="#">贴膜</a><a href="#">清洁用品</a><a href="#">笔记本散热</a><a href="#">USB拓展</a><a href="#">平板配件</a><a href="#">特色配件</a><a href="#">插座网线/电话线</a><a href="#">影音线材</a><a href="#">电脑线材</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="shopClass_cont">
                            <dl class="shopList_item">
                                <dt>电脑外设</dt>
                                <dd>
                                    <a href="#">鼠标</a><a href="#">键盘</a><a href="#">游戏外设</a><a href="#">移动硬盘</a><a href="#">摄像头</a><a href="#">高清播放器</a><a href="#">外置盒</a><a href="#">移动硬盘包</a><a href="#">手写板/绘画板</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="shopClass_cont">
                            <dl class="shopList_item">
                                <dt>音频设备</dt>
                                <dd>
                                    <a href="#">音响</a><a href="#">耳机/耳麦</a><a href="#">麦克风</a><a href="#">声卡</a><a href="#">音频附件</a><a href="#">录音笔</a>
                                </dd>
                            </dl>
                            <div class="shopList_links">
                                <a href="#">电脑整机频道<span></span></a>
                                <a href="#">硬件/外设频道<span></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="nav fl hide">
                    <li><a href="#" class="active">数码城</a></li>
                    <li><a href="#">天黑黑</a></li>
                    <li><a href="#">团购</a></li>
                    <li><a href="#">发现</a></li>
                    <li><a href="#">二手特卖</a></li>
                    <li><a href="#">名品会</a></li>
                </ul>
            </div>
        </div><!--navBar结束-->
    </div><!--headerBar结束-->
    <div class="hr_15"></div>
    <div class="comWidth clearfix products">
       <div class="leftArea">
            <div class="leftNav vertical">
                <h3 class="nav_title">More Search Detail</h3>
                <div class="nav_cont">
                    <h3>ProductType</h3>
                    <ul class="navCont_list  clearfix">
                        <li><a href="../ProductInfoController?action=p_type&product_type=commodity">Commodity</a></li>
                        <li><a href="../ProductInfoController?action=p_type&product_type=tickets">Ticket</a></li>
                        <li><a href="../ProductInfoController?action=p_type&product_type=accommodation">Accommodation</a></li>
                        <li><a href="../ProductInfoController?action=p_type&product_type=e_product">E-products</a></li>
                        <li><a href="../ProductInfoController?action=p_type&product_type=others">Others</a></li>
                    </ul>
                </div>    
            </div>
       </div>
        <div class="rightArea">
            <div class="screening_box">
                <dl class="screening clearfix">
                    <dt>tel</dt>
                    <dd class="limit"><a href="#" class="active">anything</a></dd>
                    <dd class="screeing_list">
                        <ul class="clearfix">
                            <li><a href="#">Sumsang</a></li>
                            <li><a href="#">apple</a></li>
                            <li><a href="#">Huawei</a></li>
                            <li><a href="#">apple</a></li>
                            <li><a href="#">Huawei</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="screening clearfix">
                    <dt>tel</dt>
                    <dd class="limit"><a href="#" class="active">anything</a></dd>
                    <dd class="screeing_list">
                        <ul class="clearfix">
                            <li><a href="#">Sumsang</a></li>
                            <li><a href="#">apple</a></li>
                            <li><a href="#">Huawei</a></li>
                            <li><a href="#">apple</a></li>
                            <li><a href="#">Huawei</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="screening clearfix">
                    <dt>更多</dt>
                    <dd class="screeing_list">
                        <div class="screen_more">
                            <a href="#" >Sumsang</a>
                        </div>
                        <div class="screen_more">
                            <a href="#" >Sumsang</a>
                        </div>
                    </dd>
                </dl>
            </div>
            <div class="hr_15"></div>
            <div class="addInfo">
                <div class="address">
                    <span class="add_text">send to</span>
                    <div class="select">
                        <h3>shanghaiwudingnei</h3> <span></span>
                        <ul class="show_select">
                            <li>shangdi</li>
                            <li>wukesong</li>
                            <li>wukesong</li>
                        </ul>
                    </div>
                </div>
                <div class="fr screen_text">
                    <span class="check">
                    <input type="checkbox" id="check"/><label for="check">youhuo</label>
                </span>
                <span class="shop_number">
                    gong<em>111</em>jian
                </span>
                </div>
            </div>
            <div class="hr_15"></div>
            <div class="products_list screeing_list_more clearfix">
            	<c:forEach items="${productInfos}" var="productInfo"> 
   					<div class="item">
                    	<div class="item_cont">
                        	<div class="img_item">
                            	<a href="#"><img src="${productInfo.getProductPicture() }" alt=""></a>
                        	</div>
                        	<p><a href="#">${productInfo.getProductName() } &nbsp type: ${productInfo.getProductType() }</a></p>
                        	<p class="money">￥${productInfo.getProductPrice() }</p>
                        	<p class="addCar"><a href="#">add car</a></p>
                    	</div>
                	</div>
        		</c:forEach>
                
            </div>
            <!--分页-->
            <div class="hr_15"></div>
            <div class="page">
                <a href="#">last</a><a href="#">1</a><a href="#">2</a><a href="#">3</a>
                <a href="#">4</a><a href="#">5</a><a href="#">6</a><span class="hl">...</span>
                <a href="#">200</a><a href="#">next</a><span class="morePage">200 pages,to page:</span>
                <input type="text" class="pageNum"/><span class="ye">页</span><input type="button" value="go" class="page_btn"/>
            </div>
        </div>
    </div>
    <div class="hr_15"></div>
    <div class="footer">
    	<p><a href="#">Feedback</a><i>|</i><a href="#">Privacy & Website Policies</a><i>|</i> <a href="#">Terms & Conditions</a><i>|</i> <a href="#">About us</a><i>|</i>Telepphone：400-675-1234</p>
   		<p>Copyright &copy; GreenMarket</p>
    </div>
</body>
</html>