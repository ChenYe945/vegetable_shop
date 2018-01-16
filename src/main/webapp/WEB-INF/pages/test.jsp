<%--
  Created by IntelliJ IDEA.
  User: Kenton
  Date: 2017/4/9
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="../common/common.jsp" %>

</head>
<body>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="${ctx}/css/shopCar.css">
<style>

    .link-supplier {
        width: 20px;
        height: 18px;
        background: url("${ctx}/imgs/cart-icons-2017.png") no-repeat -80px -48px;
        margin-left: 8px;
        display: inline-block;
        margin-bottom: -5px;
        cursor: pointer;
    }

    .showCar > ul > li:nth-of-type(2) > span > span {
        width: 22px;
        height: 20px;
        background: url("${ctx}/imgs/cart-icons-2017.png") no-repeat -82px -20px;
        display: inline-block;
        margin-bottom: -5px;
    }

    .showOther > ul > li > div > ul > li:last-of-type > span {
        width: 24px;
        height: 24px;
        background: url("${ctx}/imgs/ico/addtocart-icons.png") no-repeat left -58px;
        display: inline-block;
        margin-bottom: -12px;
    }

    .showOther > ul > li > div > ul > li:last-of-type:hover {
        background-color: #E4393C;
    }

    .showOther > ul > li > div > ul > li:last-of-type:hover span {
        background: url("${ctx}/imgs/ico/addtocart-icons.png") no-repeat -25px -58px;
    }
    .shopCar-outContainer:after{
        content: '';
        display: block;
        clear: both;
    }
</style>
<div class="shopCar-outContainer">
    <div class="topOf-title"><h3>全部商品</h3><span class="shop-count">2</span></div>
    <div class="shopCar-title">
        <ul>
            <li>
                <input type="checkbox">全选
            </li>
            <li class="shopCar-title-sec-li">
                商品
            </li>
            <li class="shopCar-title-thr-li">
                单价
            </li>
            <li class="shopCar-title-thou-li">
                数量
            </li>
            <li class="shopCar-title-fi-li">
                小计
            </li>
            <li class="shopCar-title-six-li">
                操作
            </li>
        </ul>
    </div>
    <div class="shopCarMessage">
        <div class="forSupplierName"><input class="checkBox1" type="checkbox">（店名/商家名称）
            <span class="link-supplier"></span></div>
        <div class="showCar">
            <ul>
                <li><input class="checkBox2" type="checkbox"><img src="${ctx}/images/shopImg_03.jpg"></li>
                <li>fdsadfdasfdasfafasdfadsaf <br> <span><span></span>不支持7天无理由退货</span></li>
                <li class="simple-price">12</li>
                <li class="shopCar-title-thou-li">
                    <input type="button" value="-" class="reduceBtn addAndReduce" style="margin-right: -4px">
                    <input class="countValue" type="text" value="1">
                    <input type="button" value="+" class="addBtn addAndReduce" style="margin-left: -4px">
                    <br><span style="color: #AAA">有货</span></li>
                <li class="all-price">¥24.80</li>
                <li class="delete-Current"><a href="#" class="deleteBtn">删除</a></li>
            </ul>
        </div>
    </div>
    <div class="shopCarMessage">
        <div class="forSupplierName"><input class="checkBox1" type="checkbox">（店名/商家名称）
            <span class="link-supplier"></span></div>
        <div class="showCar">
            <ul>
                <li><input class="checkBox2" type="checkbox"><img src="${ctx}/images/shopImg_03.jpg"></li>
                <li>fdsadfdasfdasfafasdfadsaf <br> <span><span></span>不支持7天无理由退货</span></li>
                <li class="simple-price">12</li>
                <li class="shopCar-title-thou-li">
                    <input type="button" value="-" class="reduceBtn addAndReduce" style="margin-right: -4px">
                    <input class="countValue" type="text" value="1">
                    <input type="button" value="+" class="addBtn addAndReduce" style="margin-left: -4px">
                    <br><span style="color: #AAA">有货</span></li>
                <li class="all-price">¥24.80</li>
                <li class="delete-Current"><a href="#" class="deleteBtn">删除</a></li>
            </ul>
        </div>
    </div>
    <div class="shopCarMessage">
        <div class="forSupplierName"><input class="checkBox1" type="checkbox">（店名/商家名称）
            <span class="link-supplier"></span></div>
        <div class="showCar">
            <ul>
                <li><input class="checkBox2" type="checkbox"><img src="${ctx}/images/shopImg_03.jpg"></li>
                <li>fdsadfdasfdasfafasdfadsaf <br> <span><span></span>不支持7天无理由退货</span></li>
                <li class="simple-price">12</li>
                <li class="shopCar-title-thou-li">
                    <input type="button" value="-" class="reduceBtn addAndReduce" style="margin-right: -4px">
                    <input class="countValue" type="text" value="1">
                    <input type="button" value="+" class="addBtn addAndReduce" style="margin-left: -4px">
                    <br><span style="color: #AAA">有货</span></li>
                <li class="all-price">¥24.80</li>
                <li class="delete-Current"><a href="#" class="deleteBtn">删除</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="shopCar-bottom">
    <div class="shopCar-bottom-title">
        <ul>
            <li class="checkAll">
                <input type="checkbox">全选
            </li>
            <li><a href="#">删除选中的商品</a></li>
            <li>已选择<span style="color: red;font-weight: bolder;margin: 5px;font-size: 14px">1</span>件商品</li>
            <li class="reallyAllPrice">总价：¥<span style="font-size: 18px;font-weight: bolder;color: red">0.00</span></li>
            <li><input type="button" value="去结算"></li>
        </ul>
    </div>
    <div class="shopCar-othorThing">
        <ul>
            <li>
                猜你喜欢
            </li>
            <li>
                随手够
            </li>
        </ul>
    </div>
    <div class="showOther">
        <ul>
            <li>
                <div>
                    <ul>
                        <li><img src="${ctx}/images/shopImg_05.jpg"></li>
                        <li><span>天目山 小香薯 红薯 5斤装 临安 板栗</span></li>
                        <li>
                            <span>¥38.50</span>
                        </li>
                        <li>
                            <span></span><input type="button" value="加入购物车">
                        </li>
                    </ul>
                </div>

            </li>
            <li>
                <div>
                    <ul>
                        <li><img src="${ctx}/images/shopImg_05.jpg"></li>
                        <li><span>天目山 小香薯 红薯 5斤装 临安 板栗</span></li>
                        <li>
                            <span>¥38.50</span>
                        </li>
                        <li>
                            <span></span><input type="button" value="加入购物车">
                        </li>
                    </ul>
                </div>

            </li>
            <li>
                <div>
                    <ul>
                        <li><img src="${ctx}/images/shopImg_05.jpg"></li>
                        <li><span>天目山 小香薯 红薯 5斤装 临安 板栗</span></li>
                        <li>
                            <span>¥38.50</span>
                        </li>
                        <li>
                            <span></span><input type="button" value="加入购物车">
                        </li>
                    </ul>
                </div>

            </li>
            <li>
                <div>
                    <ul>
                        <li><img src="${ctx}/images/shopImg_05.jpg"></li>
                        <li><span>天目山 小香薯 红薯 5斤装 临安 板栗</span></li>
                        <li>
                            <span>¥38.50</span>
                        </li>
                        <li>
                            <span></span><input type="button" value="加入购物车">
                        </li>
                    </ul>
                </div>

            </li>

        </ul>
    </div>
</div>
<div id="deleteLayer">

</div>
<%@include file="footer.jsp" %>
</body>
<script src="${ctx}/js/layer.js"></script>

</html>
