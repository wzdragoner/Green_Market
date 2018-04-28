<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login.jsp</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<link href="../css/reset.css" rel="stylesheet" type="text/css" />

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

        <div class="logoBar">
            <div class="comWidth">
                <div class="logo fl">
                    <a href="#"><img src="../images/logo.jpg" alt="慕课网"/></a>
                </div>
                <div class="stepBox fr">
                    <div class="step"></div>
                    <ul class="step_text">
                        <li class="s01 active">我的购物车</li>
                        <li class="s02 active">填写核对订单</li>
                        <li class="s03">订单提交成功</li>
                    </ul>
                </div>
            </div>
        </div><!--logoBar结束-->
    </div><!--headerBar结束-->
    <div class="shoppingCart">
        <div class="shopping_item comWidth">
            <h3 class="shopping_tit">收货信息</h3>
            <div class="shopping_cont padding_shop">
               <ul class="shopping_list">
                   <li><span class="shopping_list_text"><em>*</em>选择地区：</span>
                       <div class="select">
                           <h3>海淀区五环内</h3> <span></span>
                           <ul class="show_select">
                               <li>上帝</li>
                               <li>五棵松</li>
                               <li>五棵松</li>
                           </ul>
                       </div>
                   </li>
                   <li><span class="shopping_list_text"><em>*</em>详细地址：</span><input type="text" value="最多输入26个汉字" class="input input_b"/></li>
                   <li><span class="shopping_list_text"><em>*</em>收 货 人：</span><input type="text" value="最多10个汉字" class="input"/></li>
                   <li><span class="shopping_list_text"><em>*</em>手	机：</span><input type="text" value="如12312321312" class="input"/>或固定电话：<input type="text"class="input input_s" value="区号"/><span>-</span><input type="text"class="input" value="电话号码"/><span>-</span><input type="text"class="input" value="分机号码(可选)"/></li>
                    <li><input type="button"  class="affirm"/></li>
               </ul>
            </div>
        </div>
        <div class="hr_15"></div>
        <div class="shopping_item comWidth">
            <h3 class="shopping_tit">支付方式</h3>
            <div class="shopping_cont padding_shop">
                <ul class="shopping_list">
                    <li><input type="radio" class="radio" id="r1"/><label for="r1">微信支付</label>用微信扫一扫就能支付</li>
                    <li><input type="radio" class="radio" id="r2"/><label for="r2">货到付款</label>送货上门后在付款，使用现金或刷银行卡</li>
                </ul>
            </div>
        </div>
        <div class="hr_15"></div>
        <div class="shopping_item comWidth">
            <h3 class="shopping_tit">送货清单<a href="#" class="backCar">返回购物车修改</a></h3>
            <div class="shopping_cont">
                <div class="cart_inner">
                    <div class="cart_head clearfix">
                        <div class="cart_item t_name">商品名称</div>
                        <div class="cart_item t_price">单价</div>
                        <div class="cart_item t_return">返现</div>
                        <div class="cart_item t_num">数量</div>
                        <div class="cart_item t_subtotal">小计</div>
                    </div>
                    <div class="cart_cont clearfix">
                        <div class="cart_item t_name">
                            <div class="cart_shopInfo clearfix">
                                <img src="../images/sm1.jpg" alt="">
                                <div class="cart_shopInfo_cont">
                                    <p class="cart_link"><a href="#">Hisense 海信 BCD-202D 202升 三门冰柜(银色)</a></p>
                                    <p>Hisense 海信 BCD-202D 202升 三门冰柜(银色)</p>
                                </div>
                            </div>
                        </div>
                        <div class="cart_item t_price">10</div>
                        <div class="cart_item t_return">10</div>
                        <div class="cart_item t_num">10</div>
                        <div class="cart_item t_subtotal t_red">100</div>
                    </div>
                    <div class="cart_message">
                        若对包裹有特殊要求，请在册留言
                    </div>
                    <div class="cart_cont clearfix">
                        <div class="cart_item t_name">
                            <div class="cart_shopInfo clearfix">
                                <img src="../images/sm1.jpg" alt="">
                                <div class="cart_shopInfo_cont">
                                    <p class="cart_link"><a href="#">Hisense 海信 BCD-202D 202升 三门冰柜(银色)</a></p>
                                    <p>Hisense 海信 BCD-202D 202升 三门冰柜(银色)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="hr_15"></div>
        <div class="shopping_item comWidth">
            <h3 class="shopping_tit">订单结算</h3>
            <div class="shopping_cont padding_shop clearfix">
               <div class="cart_count fr">
                    <div class="cart_rmb">
                        <i>总计:</i><span>￥ha1314.20ha</span>
                    </div>
                   <div class="cart_btnBox">
                       <input type="button" class="cart_btn" value="提交订单"/>
                   </div>
               </div>
            </div>
        </div>
    </div>

    <div class="hr_15"></div>
    <div class="footer">
        <p><a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i> <a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
        <p>Copyright &copy; 2006 - 2014 慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
        <p class="web"><a href="#"><img src="images/weblogo.png" alt="信用网站"></a><a href="#"><img src="images/weblogo.png" alt="信用网站"></a><a href="#"><img src="images/weblogo.png" alt="信用网站"></a><a href="#"><img src="images/weblogo.png" alt="信用网站"></a></p>
    </div>
</body>
</html>