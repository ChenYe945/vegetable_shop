<%--
  Created by IntelliJ IDEA.
  User: Kenton
  Date: 2017/4/4
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
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
<link rel="stylesheet" href="${ctx}/css/vegetableDetail.css">
<style>
    .zixun {

        background: url("${ctx}/imgs/popScore.png") no-repeat -50px top;

    }

    .guangguang {
        background: url("${ctx}/imgs/popScore.png") no-repeat -102px top;
    }

    .guanzhu {
        background: url("${ctx}/imgs/popScore.png") no-repeat -76px top;
    }

</style>
<div class="detailMessage-top-title">
    <span style="font-size: 16px;font-weight: bolder">蔬菜</span> > vegetableName
</div>
<div class="detailMessage-outContainer">
    <div class="displayMessage">
        <div class="displayMessage-left">
            <a href="#"><img src="${ctx}/images/shopImg_02.jpg" alt=""></a>
        </div>
        <div class="displayMessage-middle">
            <ul>
                <li><h1 class="vegetableName">蔬菜名</h1></li>
                <li><span style="color: red" class="vegetableDescribe">蔬菜描述信息</span></li>
                <li class="priceAndsupplier price">
                    价格：<span style="color: red;font-size: 18px;font-weight: bolder">14.5元</span>
                </li>
                <li class="priceAndsupplier">商家信息：<span class="supplierName"
                                                        style="margin-right: 30px">supplierName</span>产地：<span
                        class="producedPlace">北京</span></li>
                <li>服务：由陈氏集团发货，并提供售后服务。</li>
                <li>
                    重量：1.1kg
                </li>
                <hr>
                <li class="fenqi">
                    <ul>
                        <li>白条分期：</li>
                        <li class="fenqiBtn">
                            30天免息
                        </li>
                        <li class="fenqiBtn">¥6.06*3期</li>
                        <li class="fenqiBtn">¥3.06*6期</li>
                        <li class="fenqiBtn">¥1.58*12期</li>
                        <li class="fenqiBtn">¥0.84*24期</li>
                    </ul>
                </li>
                <li class="btnGroup">
                    <ul>
                        <li>
                            <input class="reduce reduceAndAdd" type="button" value="-"><input type="text"
                                                                                              value="1"><input
                                class="add reduceAndAdd" type="button" value="+">
                        </li>
                        <li>
                            <input id="addShopCar" type="button" value="加入购物车">
                        </li>
                    </ul>
                </li>
                <li>
                    温馨提示：不支持七天无理由退货
                </li>
            </ul>
        </div>
        <div class="displayMessage-right">
            <ul>
                <li><img src="${ctx}/imgs/584fd568N64137b8f.png"></li>
                <li><a href="#">陈氏集团旗舰店</a></li>
                <li class="displayMessage-btn">
                    <span class="zixun"></span>留言咨询
                </li>
                <li class="displayMessage-btn">
                    <span class="guangguang"></span>进店逛逛
                </li>
                <li class="displayMessage-btn">
                    <span class="guanzhu"></span>关注店铺
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="opinion">
    <div class="opinion-title">
        <ul>
            <li class="opinion_btn opinion-active">商品评价</li>
            <li class="guarantee_btn">售后保障</li>
        </ul>
    </div>
    <div class="opinion-main">
        <div class="statement">
            <ul>
                <li>权利声明:</li>
                <li>京东上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。</li>
                <li>注：本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</li>
            </ul>
        </div>
        <div class="opinion-top">商品评价<span class="opinion-message-length"></span></div>
        <div class="opinion-message">
        </div>
    </div>
    <div class="guarantee" style="display: none">
        <ul>
            <li class="guarantee-bold">1、生鲜“优鲜赔”绿色通道</li>
            <li>生鲜自营商品的破损或腐坏等问题，请在商品签收后48小时内提交“优鲜赔”申请，100分钟内审核通过后即享补偿，无需返回商品。</li>
            <li class="guarantee-bold">2、专业生鲜客服团队—让您售后无忧</li>
            <li>生鲜客服电话：400-606-3311</li>
            <li>服务时间：09:00-21:00</li>
            <li class="guarantee-bold">3、自营商品开具机打发票或电子发票</li>
            <li>
                如您发现商品有质量问题，请在收到商品之时起48小时内及时提交申请或联系客服处理。
            </li>
            <li style="color: red" class="guarantee-bold">生鲜商品售后政策</li>
            <li>
                注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，京东生鲜不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若京东生鲜没有及时更新，请大家谅解！
            </li>

        </ul>
    </div>
</div>
</body>
<script>
    $(function () {
        var vegetableString = sessionStorage.getItem('clickVegetable');
        var vegetable = JSON.parse(vegetableString);
        $('.displayMessage-left>a>img').attr('src', '${ctx}/images/' + vegetable['vegetablePicture']);
        $('.vegetableName').text(vegetable['vegetableName']);
        $('.vegetableDescribe').text(vegetable['vegetableDescribe']);
        var price = vegetable['vegetablePrice'];
        price = price.toFixed(2);
        $('.price span').text(price + '元');
        var vegetableID = vegetable['supplierId'];
        var supplierID = vegetable['supplierId'];
        getSupplier(supplierID).then(function (supplierMessage) {
            $('.supplierName').text(supplierMessage['supplierName']);
            $('.producedPlace').text(supplierMessage['supplierAddress']);
        }).then(getOpinion(vegetableID).then(function (opinionMessage) {
            $('.opinion-message-length').text('(' + opinionMessage.length + ')条');
            for (var i = 0; i < opinionMessage.length; i++) {
                var userName;
                var userAddress
                $.ajax({
                    url: '${ctx}/user/findUserByUserID',
                    type: 'GET',
                    dataType: 'json',
                    async: false,
                    data: {'userId': opinionMessage[i]['userId']},
                    success: function (data) {
                        console.log(data);
                        userName = data['userName'];
                        userAddress = data['userAddress'];
                    },
                    error: function (error) {
                        console.log(error);
                    }
                })
                var time = opinionMessage[i]['opinionTime'];
                time = new Date(time).toLocaleString();
                console.log(time);
                var $opinion_ul = $('<ul> <li>评 价 人：<span>' + userName + '--------地址：' + userAddress + '</span></li> <li class="opinion-time">评价时间：<span>' + time + '</span></li> <li class="message">评  价：' + opinionMessage[i]['opinionText'] + '</li> </ul>')
                $('.opinion-message').append($opinion_ul);
            }

        })).catch(function (e) {
            console.log(e)
        })

        $('.opinion_btn').click(function () {
            if (!$(this).hasClass('opinion-active')) {
                $(this).addClass('opinion-active')
                $('.guarantee_btn').removeClass('opinion-active')
                $(".guarantee").hide();
                $('.opinion-main').show();
            }
        })

        $('.fenqiBtn').click(function () {
            if (!$(this).hasClass('borderForfenqi')) {
                $(this).addClass('borderForfenqi');
            } else {
                $(this).removeClass('borderForfenqi');
            }
        })

        $('.guarantee_btn').click(function () {
            if (!$(this).hasClass('opinion-active')) {
                $(this).addClass('opinion-active')
                $('.opinion_btn').removeClass('opinion-active')
                $(".guarantee").show();
                $('.opinion-main').hide();
            }
        })


        $("#addShopCar").click(function () {
            var userId = sessionStorage.currentUserID;
            var vegetableId = vegetable.vegetableId;
            var supplierId = vegetable.supplierId;
            $.messager.confirm('信息提示', '已加入购物车，是否进入购物车结算', function (r) {
                if (r) {
                    window.location.href = '${ctx}/shopCarPage';
                }
            });
            getAllShop().then(function (allShop) {
                var hasSame = false;
                for (var i = 0; i < allShop.length; i++) {
                    if (userId == allShop[i]['userId'] && vegetableId == allShop[i]['vegetableId']) {
                        hasSame = true;
                    }
                }
                if (!hasSame) {
                    $.ajax({
                        url: '${ctx}/shopCar/insertShopCar',
                        type: 'POST',
                        dataType: 'text',
                        data: {'userId': userId, 'vegetableId': vegetableId, 'supplierId': supplierId},
                        success: function (data) {
                            console.log(data);
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    })
                } else {
                    console.log('has');
                }

            })
        })

    })
    function getAllShop() {
        return new Promise(function (reslove, reject) {
            $.ajax({
                url: '${ctx}/shopCar/findAllShopCar',
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    reslove(data);
                },
                error: function (error) {
                    console.log(error);
                }
            })
        })
    }

    function getOpinion(vegetableID) {
        return new Promise(function (reslove, reject) {
            $.ajax({
                url: '${ctx}/opinion/findByVegetableID',
                type: 'POST',
                dataType: 'json',
                data: {'vegetableId': vegetableID},
                success: function (data) {
                    reslove(data);
                },
                error: function (error) {
                    console.log(error);
                }
            })
        })
    }
    function getSupplier(supplierID) {
        return new Promise(function (reslove, reject) {
            $.ajax({
                url: '${ctx}/supplier/findSupplierByID',
                type: 'POST',
                dataType: 'json',
                data: {'supplierId': supplierID},
                success: function (data) {
                    reslove(data);
                },
                error: function (error) {
                    console.log(error);
                }
            })
        })
    }
</script>
</html>
