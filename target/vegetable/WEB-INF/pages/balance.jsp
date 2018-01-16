<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <%@include file="../common/hasLogin.jsp" %>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="${ctx}/css/balance.css">
<div class="balance-outContainer">
    <div class="show-title">CS蔬菜销售网>我的余额 <span style="color: red">请注意账户安全-交易需谨慎</span></div>
    <div class="balance-message">
        <div class="all-balance">总金额：<span style="color:#F10180" class="allBalance">0.00</span><span
                style="font-size: 12px">元</span></div>
        <div class="balance-other-message">
            <ul>
                <li>可用余额：<span style="font-size: 14px" class="canUserBalance">¥0.00</span></li>
                <li>账户状态：<span style="color: orangered;font-size: 16px">有效</span></li>
                <li><a href="#">安全中心</a>保护资产安全</li>
            </ul>
        </div>
        <div class="btn-container">
            <ul>
                <li><input id="rechargeBtn" type="button" value="充值"><a href="#">查看充值明细</a></li>
                <li><input type="button" value="提现"></li>
            </ul>
        </div>
    </div>
    <div class="trading-record-container">
        <div class="record-title">最近交易记录（<span style="color: orange;font-size: 14px">最多显示10条</span>）</div>
        <div class="record-main-title">
            <ul>
                <li>
                    交易编号
                </li>
                <li>
                    时间
                </li>
                <li>
                    交易类型（充值/提现）
                </li>
                <li>
                    金额
                </li>
            </ul>
        </div>
        <div class="record-message">
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
            <ul>
                <li>
                    1201254
                </li>
                <li>
                    12:00:00
                </li>
                <li>
                    充值
                </li>
                <li>
                    <span style="color: red">50元</span>
                </li>
            </ul>
        </div>
    </div>

</div>
<div class="mask"></div>

<div class="recharge">
    <div class="recharge-title">
        充值中心
    </div>
    <div class="recharge-message">
        <ul>
            <li>
                <ul>
                    <li class="recharge-label">当前余额：</li>
                    <li class="lastBalance">0.00元</li>
                </ul>
            </li>
            <li>
                <ul>
                    <li class="recharge-label">请输入银行卡账号：</li>
                    <li class="carNumber"><input type="text" maxlength="20"></li>
                </ul>
            </li>
            <li>
                <ul>
                    <li class="recharge-label">请输入金额：</li>
                    <li><input type="text"></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="recharge-save">
        <input type="button" value="充值">
        <input id="rechargeCancelBtn" type="button" value="取消">
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
<script>
    $(function () {
        /**
         * 根据id获取用户信息
         * @returns {Promise}
         */
        function getUserMessage() {
            return new Promise(function (resolve, reject) {
                $.ajax({
                    url: '${ctx}/user/findUserByUserID',
                    type: 'POST',
                    data: {'userId': sessionStorage.getItem('currentUserID')},
                    dataType: 'json',
                    success: function (data) {
//                        console.log(data);
                        resolve(data);
                    },
                    error: function (error) {
                        console.log(error);
                    }

                })
            })

        }

        getUserMessage().then(function (userMessage) {
            var balance = userMessage['userBalance'];
            if (balance == "" || balance == null) {
                balance = 0;
            }
            balance = balance.toFixed(2);
            $('.allBalance').text(balance);
            $('.canUserBalance').text('¥' + balance);
            $('#rechargeBtn').click(function () {
                $('.mask').show();
                center($('.recharge'));
            })
            $('#rechargeCancelBtn').click(function () {
                closed($('.mask'), $('.recharge'))
            })
        })

        //当没有数据时
        <%--var $img = $('<img src="${ctx}/imgs/noRecord.png" alt="图片"><p>当前没有交易记录，先去抢购吧！</p>');--%>
        <%--$('.record-message').append($img);--%>

        /**
         * 弹出窗口设置居中
         * @param obj
         */
        function center(obj) {
            var screenWidth = $(window).width(), screenHeight = $(window).height();  //当前浏览器窗口的 宽高
            var scrolltop = $(document).scrollTop();
            var objLeft = (screenWidth - obj.width()) / 2;
            var objTop;
            if (obj.hasClass('addAddressPanel')) {
                objTop = (screenHeight - obj.height()) / 2;
            } else {
                objTop = (screenHeight - obj.height()) / 2 + scrolltop / 2;
            }

            obj.css({left: objLeft + 'px', top: objTop + 'px'});
            obj.show();
        }

        // 隐藏 的操作
        function closed(obj1, obj2) {
            obj1.hide();
            obj2.hide();
        }
    })


</script>
</html>
