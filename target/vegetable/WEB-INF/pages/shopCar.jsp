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
    <%@include file="../common/hasLogin.jsp" %>
    <%--<link href="${ctx}/css/layer.css" rel="stylesheet">--%>

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
<script>
    $(function () {
        getShopCarMessage().then(function (shopMessages) {
            for (var i = 0; i < shopMessages.length; i++) {
                var shopCar = {};
                shopCar.supplierId = shopMessages[i]['supplierId'];
                shopCar.vegetableId = shopMessages[i]['vegetableId'];
                shopCar.shopCarId = shopMessages[i]['shopcarId'];
                var supplierMessage = getSupplierMessage(shopCar.supplierId);
                shopCar.supplierName = supplierMessage['supplierName'];
                var vegetableMessage = getVegetableMessage(shopCar.vegetableId);

                shopCar.vegetableName = vegetableMessage['vegetableName'];
                shopCar.vegetablePicture = '${ctx}/images/' + vegetableMessage['vegetablePicture'];
                shopCar.vagetablePrice = '¥' + vegetableMessage['vegetablePrice'].toFixed(2);
                shopCar.price = vegetableMessage['vegetablePrice'].toFixed(2);
                shopCar.vegetableDescribe = vegetableMessage['vegetableDescribe'];

                var $shopCarMessage = $('<div class="shopCarMessage" data-shopCarId=' + shopCar.shopCarId + ' > ' +
                    '<div class="forSupplierName"><input class="checkBox1" type="checkbox">' + shopCar.supplierName + '（店名/商家名称）' +
                    '<span class="link-supplier"></span></div> ' +
                    '<div class="showCar"> <ul> <li>' +
                    '<input class="checkBox2" type="checkbox"><img src="' + shopCar.vegetablePicture + '"></li> <li>' + shopCar.vegetableDescribe + ' <br> <span><span></span>不支持7天无理由退货</span> </li> <li class="simple-price">' + shopCar.vagetablePrice + '</li> <li class="shopCar-title-thou-li"><input type="button" value="-" class="reduceBtn addAndReduce" style="margin-right: -4px"> <input class="countValue" type="text" value="1"> <input type="button" value="+" class="addBtn addAndReduce" style="margin-left: -4px"> <br><span style="color: #AAA">有货</span> </li> <li class="all-price">¥24.80</li> <li class="delete-Current"><a href="#" class="deleteBtn">删除</a></li> </ul> </div> </div>')
                $('.shopCar-outContainer').append($shopCarMessage);
                var shopCar_outContainer_height = $('.shopCarMessage').height() * $('.shopCarMessage').length + 100;
                $('.shopCar-outContainer').height(shopCar_outContainer_height);

            }
            setAllPrice();
        }).then(function () {
            $('.checkBox2').click(function () {
                if ($(this).prop("checked")) {
                    var checkBox = $(this).parent().parent().parent().prev('.forSupplierName').find('input[type="checkbox"]');
                    $(checkBox).prop("checked", true);
                    var thisAllPriceLi = $(this).parent().parent().find('.all-price');
                    var thisAllPrice = $(thisAllPriceLi).text();
                    var thisAllPriceArr = thisAllPrice.split('¥')
                    var eachPrice = parseFloat(thisAllPriceArr[1]).toFixed(2)
                    var reallyAllPrice = $('.reallyAllPrice span').text()
                    var reallyAllPriceFloat = parseFloat(reallyAllPrice).toFixed(2)
                    var s = (parseFloat(eachPrice) + parseFloat(reallyAllPriceFloat)).toFixed(2)
                    $('.reallyAllPrice span').text(s);


                } else {
                    var checkBox = $(this).parent().parent().parent().prev('.forSupplierName').find('input[type="checkbox"]');
                    $(checkBox).prop("checked", false);
                    var thisAllPriceLi = $(this).parent().parent().find('.all-price');
                    var thisAllPrice = $(thisAllPriceLi).text();
                    var thisAllPriceArr = thisAllPrice.split('¥')
                    var eachPrice = parseFloat(thisAllPriceArr[1]).toFixed(2)
                    var reallyAllPrice = $('.reallyAllPrice span').text()
                    var reallyAllPriceFloat = parseFloat(reallyAllPrice).toFixed(2)
                    var s = (parseFloat(reallyAllPriceFloat) - parseFloat(eachPrice)).toFixed(2)
                    $('.reallyAllPrice span').text(s);
                }
            })

            $('.checkAll>input[type="checkbox"]').click(function () {
                if ($(this).prop('checked')) {

                } else {

                }
            })

            $('.forSupplierName>.checkBox1').click(function () {
                if ($(this).prop('checked')) {
                    var checkBox = $(this).parent().next('.showCar').find('input[type="checkbox"]');
                    $(checkBox).prop("checked", true);
                    var thisAllPriceLi = $(this).parent().next('.showCar').find('.all-price');
                    var thisAllPrice = $(thisAllPriceLi).text();
                    var thisAllPriceArr = thisAllPrice.split('¥')
                    var eachPrice = parseFloat(thisAllPriceArr[1]).toFixed(2)
                    var reallyAllPrice = $('.reallyAllPrice span').text()
                    var reallyAllPriceFloat = parseFloat(reallyAllPrice).toFixed(2)
                    var s = (parseFloat(eachPrice) + parseFloat(reallyAllPriceFloat)).toFixed(2)
                    $('.reallyAllPrice span').text(s);
                } else {
                    var checkBox = $(this).parent().next('.showCar').find('input[type="checkbox"]');
                    $(checkBox).prop("checked", false);
                    var thisAllPriceLi = $(this).parent().next('.showCar').find('.all-price');
                    var thisAllPrice = $(thisAllPriceLi).text();
                    var thisAllPriceArr = thisAllPrice.split('¥')
                    var eachPrice = parseFloat(thisAllPriceArr[1]).toFixed(2)
                    var reallyAllPrice = $('.reallyAllPrice span').text()
                    var reallyAllPriceFloat = parseFloat(reallyAllPrice).toFixed(2)
                    var s = (parseFloat(reallyAllPriceFloat) - parseFloat(eachPrice)).toFixed(2)
                    $('.reallyAllPrice span').text(s);
                }
            })
            $('.deleteBtn').click(function () {
                var $shopCarMessage = $(this).parent().parent().parent().parent();
                deleteLayer($shopCarMessage)
            })
            $('.addAndReduce').mousedown(function (e) {
                if (e.which == 1) {
                    $(this).addClass('addAndReduce_bcColor')
                }
            })
            $('.addAndReduce').mouseup(function (e) {
                if (e.which == 1) {
                    $(this).removeClass('addAndReduce_bcColor')
                }
            })
            $('.reduceBtn').mouseup(function (e) {
                if (e.which == 1) {
                    var value = $(this).next('.countValue').val();
                    if (value > 1) {
                        value--;
                        $(this).next('.countValue').val(value);
                        var price = $(this).parent().prev('.simple-price').text();
                        getAllPrice($(this), value)
                    }

                }
            })
            $('.addBtn').mouseup(function (e) {
                if (e.which == 1) {
                    var value = $(this).prev('.countValue').val();
                    value++;
                    $(this).prev('.countValue').val(value);
                    getAllPrice($(this), value)
                }
            })
        })
    })

    function getAllPrice(obj, value) {
        var price = obj.parent().prev('.simple-price').text();
        var priceArr = price.split('¥');
        var all = (priceArr[1] * value).toFixed(2);
        obj.parent().next('.all-price').text('¥' + all);
    }


    function deleteLayer($shopCarMessage) {
        layer.open({
            title: false,
            skin: 'demo-class',
            content: '你确定要删除本条购物车信息吗？',
            offset: ['45%', '45%'],
            btn: ['确定', '取消'],
            yes: function (index, layero) {
                $($shopCarMessage).hide();
                var id = $($shopCarMessage).attr('data-shopcarid');
                $.ajax({
                    url: '${ctx}/shopCar/deleteShopCarById',
                    type: 'POST',
                    data: {'shopcarId': id},
                    dataType: 'text',
                    success: function (data) {
                        console.log(data);
                        if (data == 'success') {
                            window.location.reload();
                        }
                    },
                    error: function (error) {
                        console.log(error);
                    }
                })
                layer.close(index);
            }
        });
    }

    function setAllPrice() {
        $('.shopCarMessage').each(function (index, each) {
            var eachPrice = $(each).find('.simple-price').text();
            var arrPrice = eachPrice.split('¥');
            var price = parseFloat(arrPrice[1]).toFixed(2);
            var vegetableCount = $(each).find('.countValue').val();
            var eachAllPrice = $(each).find('.all-price');
            var allPrice = '¥' + (price * vegetableCount).toFixed(2);
            eachAllPrice.text(allPrice);
        })
    }


    /**
     * 获取通过当前用户id获取当前用户的购物车数据
     * */
    function getShopCarMessage() {
        return new Promise(function (resolve, reject) {
            $.ajax({
                url: '${ctx}/shopCar/findShopCarsByUserID',
                type: 'POST',
                data: {'userId': sessionStorage.currentUserID},
                dataType: 'json',
                success: function (data) {
                    resolve(data);
                },
                error: function (error) {
                    console.log(error);
                }
            })
        })
    }

    /**
     * 通过供应商id获取供应商信息
     * */
    function getSupplierMessage(supplierId) {
        var supplierMessage;
        $.ajax({
            url: '${ctx}/supplier/findSupplierByID',
            type: 'POST',
            data: {'supplierId': supplierId},
            dataType: 'json',
            async: false,
            success: function (data) {
                supplierMessage = data;
            },
            error: function (error) {
                console.log(error);
            }
        })
        return supplierMessage;

    }

    /**
     * 通过蔬菜id获取蔬菜信息
     * @param vegetableId
     * @returns {Promise}
     */
    function getVegetableMessage(vegetableId) {
        var vegetableMessage;
        $.ajax({
            url: '${ctx}/vegetable/findVegetableById',
            type: 'POST',
            data: {'vegetableId': vegetableId},
            dataType: 'json',
            async: false,
            success: function (data) {
                vegetableMessage = data;
            },
            error: function (error) {
                console.log(error);
            }
        })
        return vegetableMessage;
    }

</script>
</html>
