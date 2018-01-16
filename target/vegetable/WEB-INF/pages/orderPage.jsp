<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="../common/common.jsp" %>
    <%@include file="../common/hasLogin.jsp" %>
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body>
<%@include file="header.jsp" %>
<link href="${ctx}/css/order.css" rel="stylesheet">
<style>
    .order-message-delete {
        width: 30px;
        height: 30px;
        display: inline-block;
        background: url("${ctx}/imgs/order-delete.png") no-repeat -310px -23px;
        right: 10px;
        top: 10px;
        position: absolute;
    }
</style>
<div class="orderPage-container">
    <div class="orderPage-title">
        我的订单
    </div>
    <div class="orderPage-main">
        <div class="orderPage-main-change">
            <ul>
                <li class="order-active">
                    全部订单
                </li>
                <li>
                    待付款
                </li>
                <li>
                    待收货
                </li>
                <li>
                    待评价
                </li>
            </ul>
            <div class="orderPage-forSearch">
                <input type="text" placeholder="请输入订单号"><input type="button" value="订单搜索">
            </div>

        </div>
        <hr class="order-hr">

        <div class="order-title">
            <ul>
                <li>蔬菜</li>
                <li>发货商</li>
                <li>单价</li>
                <li>数量（斤）</li>
                <li>实付款</li>
            </ul>
        </div>
        <div class="page-change">
            <input type="button" value="上一页">
            <input type="button" value="下一页">
        </div>

    </div>
</div>
<%@include file="footer.jsp" %>
</body>
<script>
    $(function () {
        var getOrderMessage = new Promise(function (reslove, reject) {
            $.ajax({
                url: '${ctx}/order/findOrderByUserID',
                type: 'GET',
                data: {'userId': sessionStorage.getItem('currentUserID')},
                dataType: 'json',
                success: function (data) {
                    reslove(data);
                },
                error: function (error) {
                    console.log(error);
                }
            })

        })
        getOrderMessage.then(function (orderMessage) {
            for (var i = 0; i < orderMessage.length; i++) {
                var vegetable = getVegetableByID(orderMessage[i]['vegetableId']);
                var supplier = getSupplierById(orderMessage[i]['supplierId']);
                var count = orderMessage[i]['orderNum'];
                var time = orderMessage[i]['orderTime'];
                var orderTime = new Date(time);
                var orderNumber = '406769076167819' + orderMessage[i]['orderId'];
                var $order_message = $('<div class="order-message"> ' +
                    '<div class="order-message-title"> ' +
                    '<input type="checkbox">' +
                    '<span class="order-time">' + orderTime.toLocaleString() + '</span> ' +
                    '订单号:<span>' + orderNumber + '</span> ' +
                    '<span class="order-message-delete"></span> ' +
                    '</div> ' +
                    '<div class="order-message-main"> ' +
                    '<ul> ' +
                    '<li>' +
                    '<img src="${ctx}/images/' + vegetable['vegetablePicture'] + '" alt="图片"><p>' + vegetable['vegetableName'] + ':' + vegetable['vegetableDescribe'] + '</p></li> <li>' + supplier['supplierName'] + ' </li> <li>¥' + vegetable['vegetablePrice'] + '</li> <li>' + count + '</li> <li>' + vegetable['vegetablePrice'] * count + '元</li> </ul> </div> </div>')
                $('.orderPage-main').append($order_message);

            }

        })
        Date.prototype.toLocaleString = function () {
            return this.getFullYear() + "-" + (this.getMonth() + 1) + "-" + this.getDate();
        };

        /**
         * 获取供应商信息
         * */
        function getSupplierById(supplierId) {
            var supplier;
            $.ajax({
                url: '${ctx}/supplier/findSupplierByID',
                type: 'POST',
                dataType: 'json',
                async: false,
                data: {'supplierId': supplierId},
                success: function (data) {
                    supplier = data;
                },
                error: function (error) {
                    console.log(error)
                }
            })
            return supplier;
        }

        /**
         * 获取供应商信息
         * @param vegetableId
         * @returns {*}
         */
        function getVegetableByID(vegetableId) {
            var vegetable;
            $.ajax({
                url: '${ctx}/vegetable/findVegetableById',
                type: 'POST',
                dataType: 'json',
                async: false,
                data: {'vegetableId': vegetableId},
                success: function (data) {
                    vegetable = data;
                },
                error: function (error) {
                    console.log(error)
                }
            })
            return vegetable;

        }

    })
</script>
</html>
