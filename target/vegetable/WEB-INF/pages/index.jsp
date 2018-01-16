<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>陈氏蔬菜</title>
    <%@include file="../common/common.jsp" %>
    <link href="${ctx}/css/init.css" rel="stylesheet">
    <link href="${ctx}/css/bottom/reset.css" rel="stylesheet">
    <link href="${ctx}/css/bottom/main.css" rel="stylesheet">

    <style>
        .index_bottom_bottom_content {
            width: 100%;
        }
    </style>
</head>
<body style="padding: 0">
<%@include file="header.jsp" %>
<%@include file="index_bottom.jsp" %>
<style>
    .shop_item h3 {
        margin: 0;
        padding: 0;
        font-size: 16px;
        margin-top: 5px;
    }

    .shop_item p {
        color: #FFC28F;
    }

    .forIndexChange {
        line-height: 21px;
    }

    .forIndexChange a {
        margin-bottom: -25px;
    }

    /*.index_bottom_img{*/
    /*padding-top:0 ;*/
    /*}*/
    #webNavigate {
        padding: 0;
    }

    #webNavigate li {
        margin-top: -5px;
    }

    .shop_item .shop_img img:hover {
        width: 99%;
        height: 216px;
    }
</style>
<div class="index_bottom_bottom_content">
    <div class="shopTitle comWidth clearfix">
        <span class="icon fl"></span>
        <h3 class="fl">蔬菜展示</h3>
        <a href="${ctx}/displayVegetable" class="mare fr">更多&gt;&gt;</a>
    </div>
    <div class="shopList comWidth clearfix">
        <div class="leftArea">
            <div class="banner_bar fr banner_sm">
                <ul class="imgBox">
                    <li><a href="#"><img src="${ctx}/images/banner_sm_01.jpg" alt=""></a></li>
                    <li><a href="#"><img src="${ctx}/images/banner_sm_02.jpg" alt=""></a></li>
                </ul>
                <%--<div class="imgNum">--%>
                <%--<a href="#" class="active"></a>--%>
                <%--<a href="#"></a>--%>
                <%--<a href="#"></a>--%>
                <%--</div>--%>

            </div>
        </div>
        <div class="rightArea">
            <div class="shopList_top clearfix">
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_01.jpg" alt=""></a>
                    </div>
                    <h3>HTC新渴望8系列</h3>
                    <p>1899元</p>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_02.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_03.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_04.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>

            </div>
            <div class="shopList_sm clearfix">
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_01.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_02.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_03.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_04.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <%--<div class="shopTitle comWidth clearfix">--%>
    <%--<span class="icon fl" ></span><h3 class="fl">家用电脑</h3>--%>
    <%--<a href="#" class="mare fr">更多&gt;&gt;</a>--%>
    <%--</div>--%>
    <div class="shopList comWidth clearfix">
        <div class="leftArea">
            <div class="banner_bar fr banner_sm">
                <ul class="imgBox">
                    <li><a href="#"><img src="${ctx}/images/banner_sm_03.jpg" alt=""></a></li>
                    <li><a href="#"><img src="${ctx}/images/banner_sm_02.jpg" alt=""></a></li>
                </ul>
                <%--<div class="imgNum">--%>
                <%--<a href="#" class="active"></a>--%>
                <%--<a href="#"></a>--%>
                <%--<a href="#"></a>--%>
                <%--</div>--%>

            </div>
        </div>
        <div class="rightArea">
            <div class="shopList_top clearfix">
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_05.jpg" alt=""></a>
                    </div>
                    <h3>HTC新渴望8系列</h3>
                    <p>1899元</p>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_06.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_07.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_08.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>

            </div>
            <div class="shopList_sm clearfix">
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_05.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_06.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_07.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_08.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <%--<div class="shopTitle comWidth clearfix">--%>
    <%--<span class="icon fl" ></span><h3 class="fl">家用电脑</h3>--%>
    <%--<a href="#" class="mare fr">更多&gt;&gt;</a>--%>
    <%--</div>--%>
    <div class="shopList comWidth clearfix">
        <div class="leftArea">
            <div class="banner_bar fr banner_sm">
                <ul class="imgBox">
                    <li><a href="#"><img src="${ctx}/images/banner_sm_04.jpg" alt=""></a></li>
                    <li><a href="#"><img src="${ctx}/images/banner_sm_02.jpg" alt=""></a></li>
                </ul>
                <%--<div class="imgNum">--%>
                <%--<a href="#" class="active"></a>--%>
                <%--<a href="#"></a>--%>
                <%--<a href="#"></a>--%>
                <%--</div>--%>

            </div>
        </div>
        <div class="rightArea">
            <div class="shopList_top clearfix">
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_13.jpg" alt=""></a>
                    </div>
                    <h3>HTC新渴望8系列</h3>
                    <p>1899元</p>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_14.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_15.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>
                <div class="shop_item">
                    <div class="shop_img">
                        <a href="#"><img src="${ctx}/images/shopImg_16.jpg" alt=""></a>
                        <h3>HTC新渴望8系列</h3>
                        <p>1899元</p>
                    </div>
                </div>

            </div>
            <div class="shopList_sm clearfix">
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_13.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_14.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_15.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>
                <div class="shopItem_sm">
                    <div class="shopItem_smImg">
                        <a href="#"><img src="${ctx}/images/shopImg_16.jpg" alt=""></a>
                    </div>
                    <div class="shopItem_text">
                        <p>NFC技术一碰轻松
                            配对！接触屏幕</p>
                        <%--<h3>¥149.00</h3>--%>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<%@include file="footer.jsp" %>
<script>
    var bigImg = $(".shop_item .shop_img img");
    var smImg = $(".shopItem_sm .shopItem_smImg img");
    var names = $(".shop_item h3");
    var prices = $('.shop_item p');
    var vegetableDescribe = $(".shopItem_sm .shopItem_text p")
//    console.log(bigImg.length);
    var vegetables = getVegetable();
//    console.log(vegetables);
    for (var i = 0; i < bigImg.length; i++) {
        bigImg[i].src ='${ctx}/images/'+vegetables[i].vegetablePicture;
        var shop_item = $(bigImg[i]).parent().parent().parent();
        $(shop_item).attr('vegetable',JSON.stringify(vegetables[i]))
        $(names[i]).text(vegetables[i].vegetableName);
        $(prices[i]).text('单价：'+vegetables[i].vegetablePrice+'元/斤');
    }
    for(var i=0;i<smImg.length;i++){
        smImg[i].src ='${ctx}/images/'+vegetables[i].vegetablePicture;
        $(vegetableDescribe[i]).text(vegetables[i].vegetableDescribe)
    }

    $('.shop_item').click(function () {
        window.location.href = '${ctx}/vegetableDetailMessage';
        sessionStorage.setItem('clickVegetable',$(this).attr('vegetable'));
    })
    /**
     * 获取所有蔬菜信息
     * @returns {*}
     */
    function getVegetable() {
        var vegetableData;
        $.ajax({
            url: '${ctx}/vegetable/findAllVegetable',
            type: 'GET',
            dataType: 'json',
            async: false,
            success: function (data) {
                vegetableData = data;
            },
            error: function (error) {
                console.log(error)
            }
        })
        return vegetableData;
    }
</script>
</body>
</html>
