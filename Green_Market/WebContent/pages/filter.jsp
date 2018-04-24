<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>filter.jsp</title>
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
                <div class="searchBox fl">
                    <input type="text" class="search_text fl" >
                    <input type="button" value="搜索" class="search_btn fr"/>
                </div>
                <div class="shopCar fr">
                    <span class="shopText fl">购物车</span>
                    <span class="shopNum fl">0</span>
                </div>
            </div>
        </div><!--logoBar结束-->

        <div class="navBox">
            <div class="comWidth">
                <div class="shopClass fl">
                   <h3>全部商品分类<i></i></h3>
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
                <ul class="nav fl">
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
                <h3 class="nav_title">手机、相机、数码</h3>
                <div class="nav_cont">
                    <h3>手机通讯</h3>
                    <ul class="navCont_list  clearfix">
                        <li><a href="#">全部手机</a></li>
                        <li><a href="#">1080P高清</a></li>
                        <li><a href="#">双卡手机</a></li>
                        <li><a href="#">拍照神器</a></li>
                        <li><a href="#">老年手机</a></li>
                        <li><a href="#">对讲机</a></li>
                        <li><a href="#">联通专区</a></li>
                    </ul>
                </div>
                <div class="nav_cont">
                    <h3>手机通讯</h3>
                    <ul class="navCont_list clearfix">
                        <li><a href="#">全部手机</a></li>
                        <li><a href="#">1080P高清</a></li>
                        <li><a href="#">双卡手机</a></li>
                        <li><a href="#">拍照神器</a></li>
                        <li><a href="#">老年手机</a></li>
                        <li><a href="#">对讲机</a></li>
                        <li><a href="#">联通专区</a></li>
                    </ul>
                </div>
                <div class="nav_cont">
                    <h3>手机通讯</h3>
                    <ul class="navCont_list clearfix">
                        <li><a href="#">全部手机</a></li>
                        <li><a href="#">1080P高清</a></li>
                        <li><a href="#">双卡手机</a></li>
                        <li><a href="#">拍照神器</a></li>
                        <li><a href="#">老年手机</a></li>
                        <li><a href="#">对讲机</a></li>
                        <li><a href="#">联通专区</a></li>
                    </ul>
                </div>
            </div>

       </div>
        <div class="rightArea">
            <div class="screening_box">
                <dl class="screening clearfix">
                    <dt>手机</dt>
                    <dd class="limit"><a href="#" class="active">不限</a></dd>
                    <dd class="screeing_list">
                        <ul class="clearfix">
                            <li><a href="#">Sumsang/三星</a></li>
                            <li><a href="#">apple/苹果</a></li>
                            <li><a href="#">Huawei/华为</a></li>
                            <li><a href="#">apple/苹果</a></li>
                            <li><a href="#">Huawei/华为</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="screening clearfix">
                    <dt>手机</dt>
                    <dd class="limit"><a href="#" class="active">不限</a></dd>
                    <dd class="screeing_list">
                        <ul class="clearfix">
                            <li><a href="#">Sumsang/三星</a></li>
                            <li><a href="#">apple/苹果</a></li>
                            <li><a href="#">Huawei/华为</a></li>
                            <li><a href="#">apple/苹果</a></li>
                            <li><a href="#">Huawei/华为</a></li>
                            <li><a href="#">Sumsang/三星</a></li>
                            <li><a href="#">apple/苹果</a></li>
                            <li><a href="#">Huawei/华为</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="screening clearfix">
                    <dt>更多</dt>
                    <dd class="screeing_list">
                        <div class="screen_more">
                            <a href="#" >Sumsang/三星</a>
                        </div>
                        <div class="screen_more">
                            <a href="#" >Sumsang/三星</a>
                        </div>
                    </dd>
                </dl>
            </div>
            <div class="hr_15"></div>
            <div class="addInfo">
                <div class="address">
                    <span class="add_text">送至</span>
                    <div class="select">
                        <h3>海淀区五环内</h3> <span></span>
                        <ul class="show_select">
                            <li>上帝</li>
                            <li>五棵松</li>
                            <li>五棵松</li>
                        </ul>
                    </div>
                </div>
                <div class="fr screen_text">
                    <span class="check">
                    <input type="checkbox" id="check"/><label for="check">仅显示有货</label>
                </span>
                <span class="shop_number">
                    共<em>111</em>件
                </span>
                </div>
            </div>
            <div class="hr_15"></div>
            <div class="products_list screeing_list_more clearfix">
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="item_cont">
                        <div class="img_item">
                            <a href="#"><img src="../images/shopImg.png" alt=""></a>
                        </div>
                        <p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
                        <p class="money">￥888</p>
                        <p class="addCar"><a href="#">加入购物车</a></p>
                    </div>
                </div>
            </div>
            <!--分页-->
            <div class="hr_15"></div>
            <div class="page">
                <a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a>
                <a href="#">4</a><a href="#">5</a><a href="#">6</a><span class="hl">...</span>
                <a href="#">200</a><a href="#">下一页</a><span class="morePage">共200页,到第</span>
                <input type="text" class="pageNum"/><span class="ye">页</span><input type="button" value="确定" class="page_btn"/>
            </div>
        </div>
    </div>
    <div class="hr_15"></div>
    <div class="footer">
        <p><a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i> <a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
        <p>Copyright &copy; 2006 - 2014 慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
    </div>
</body>
</html>