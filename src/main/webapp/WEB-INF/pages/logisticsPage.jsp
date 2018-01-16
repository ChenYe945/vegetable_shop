
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>
<link href="${ctx}/css/logistics.css" rel="stylesheet">
<style>
    .logistics-right-title>span{
        background: url("${ctx}/imgs/car.png") no-repeat -37px -315px;
        display: inline-block;
        width: 30px;
        height: 33px;
        margin: 5px 0 5px 18px;
        float: left;
    }
</style>
<div class="logistics_out">
    <div class="logistics-left">
        <ul>
            <li>
                代付款
            </li>
            <li>
                代发货
            </li>
            <li>
                代收货 <span style="color: red"> 8 </span>
            </li>
            <li>
                待评价
            </li>
            <li>
                退款
            </li>
        </ul>
    </div>
    <div class="logistics-right">
        <div class="logistics-right-title"><span></span><h3>我的物流</h3></div>
        <div class="logistics-right-main">
            <ul class="logistics-line-parent">
                <li class="logistics-line">
                    <ul class="logistics-line-message">
                        <li>
                            <a href="#"><img src="${ctx}/images/shopImg_01.jpg" alt="图片"></a>
                        </li>
                        <li>
                            <ul class="logistics-line-message-center">
                                <li>在福建福州公司盛世淘宝分部进行揽件扫描</li>
                                <li>2017-03-29 10:29:06<span style="padding-left: 20px;font-size: 14px"><a href="#">查看物流明细</a></span> </li>
                            </ul>
                        </li>
                        <li class="logistics-sureGet">
                            <input type="button" value="确认收货">
                        </li>
                    </ul>
                </li>
                <li class="logistics-line">
                    <ul class="logistics-line-message">
                        <li>
                            <a href="#"><img src="${ctx}/images/shopImg_01.jpg" alt="图片"></a>
                        </li>
                        <li>
                            <ul class="logistics-line-message-center">
                                <li>在福建福州公司盛世淘宝分部进行揽件扫描</li>
                                <li>2017-03-29 10:29:06<span style="padding-left: 20px;font-size: 14px"><a href="#">查看物流明细</a></span> </li>
                            </ul>
                        </li>
                        <li class="logistics-sureGet">
                            <input type="button" value="确认收货">
                        </li>
                    </ul>
                </li>
                <li class="logistics-line">
                    <ul class="logistics-line-message">
                        <li>
                            <a href="#"><img src="${ctx}/images/shopImg_01.jpg" alt="图片"></a>
                        </li>
                        <li>
                            <ul class="logistics-line-message-center">
                                <li>在福建福州公司盛世淘宝分部进行揽件扫描</li>
                                <li>2017-03-29 10:29:06<span style="padding-left: 20px;font-size: 14px"><a href="#">查看物流明细</a></span> </li>
                            </ul>
                        </li>
                        <li class="logistics-sureGet">
                            <input type="button" value="确认收货">
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
<script>
    var orderLine = $(".logistics-line");
    $(".logistics_out").height(orderLine.length*96+270-158);
</script>
</html>
