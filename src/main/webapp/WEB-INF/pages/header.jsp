<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>陈氏蔬菜</title>
    <%@include file="../common/common.jsp" %>
    <link href="${ctx}/css/init.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui/demo.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/bootstrap/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/jquery.easyui.min.js"></script>
    <script src="${ctx}/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/easyui-lang-zh_CN.js"></script>
    <link href="${ctx}/css/header.css" rel="stylesheet">


</head>
<body style="padding: 0">
<div class="pic_top_1212 width_100">
    <div class="pic_top_long re_class">
        <a href="#" title="2016年蔬菜博览会" target="_blank">
            <img src="${ctx}/imgs/top.jpg">
        </a>
        <div class="headerSearchBox">
            <input id="search" type="text" class="fl">
            <input id="searchBtn" type="button" value="搜 索" class="headerSearch_btn fr">
        </div>
    </div>
</div>
<div class="pic_top_1213 width_100">
    <div class="pic_top_long2">
        <div class="pic_top_long2_firstDiv fontSizeAndColor">
            您好！欢迎访问陈氏蔬菜网！马上开启<a href="${ctx}/displayVegetable" style="padding-left: 4px">采购之旅</a>
            <a id="pleaseLogin" href="${ctx}/login" target="_self" style="padding-left: 10px">[请登录]</a>
            <a href="${ctx}/register" style="padding-left: 10px">[免费注册]</a>
        </div>

        <div class="collapse navbar-collapse pic_top_long2_sedDiv fontSizeAndColor" id="bs-example-navbar-collapse-1"
             style="min-width: 840px;padding-right: 0px;padding-left: 50px">
            <ul class="nav navbar-nav" id="navigationBar">
                <li class="dropdown ">
                    <a href="${ctx}/index" target="_self" class="dropdown_padding active"
                       style="font-size: 1.2em;font-weight: bolder">首页</a>
                </li>

                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">关于我的<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu fontSizeAndColor " role="menu" style="min-width: 85px">
                        <li><a href="${ctx}/orderPage">我的订单</a></li>
                        <li><a href="${ctx}/shopCarPage">购物车</a></li>
                        <li><a href="${ctx}/balance">我的余额</a></li>
                        <li><a href="#">我的评价</a></li>
                        <li><a href="${ctx}/logisticsPage">物流信息</a></li>
                        <li><a href="#">积分抵现</a></li>
                        <li><a href="#">我的收藏</a></li>
                    </ul>
                </li>
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">客户服务<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu fontSizeAndColor " role="menu" style="min-width: 85px">
                        <li><a href="#">自动退换货</a></li>
                        <li><a href="#">自动发票</a></li>
                        <li><a href="#">我要投诉</a></li>
                        <li><a href="#">意见建议</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">帮助中心<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu fontSizeAndColor" role="menu" style="min-width: 85px">
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">联系客服</a></li>
                        <li><a href="#">忘记密码</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">手机app<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu fontSizeAndColor " role="menu" style="min-width: 85px">
                        <li class="forIndexChange"><a href="#" style="padding: 0;margin: 0"><img
                                src="${ctx}/imgs/QR_code.png" style="padding-left: 2px"></a>
                            <br/>
                            <p style="text-align: center;margin-top: -15px;padding: 0;width: 85px">扫一扫下载<br>陈氏蔬菜app</p>
                        </li>

                    </ul>
                </li>

                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">企业采购<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu fontSizeAndColor " role="menu" style="min-width: 85px">
                        <li><a href="#">礼品卡采购</a></li>
                        <li><a href="#">礼品卡激活</a></li>
                        <li><a href="#">礼品卡使用</a></li>
                    </ul>
                </li>
                <li class="dropdown ">
                    <a href="${ctx}/address" target="_self" class="dropdown_padding">收货地址</a>
                </li>


                <li class="dropdown ">
                    <a href="${ctx}/personalInformation" target="_self" class="dropdown_padding">个人信息</a>
                </li>
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle dropdown_padding" data-toggle="dropdown">加入收藏</a>
                </li>

            </ul>


        </div>
    </div>
</div>
<script>
    $(function () {
        var vegetableArr;
        var headSession = window.sessionStorage;
        //判断是否已经登录，如果已经登录，改变显示的字体
        if (headSession.length > 0) {
            $('#pleaseLogin').text('[已登录]');
        }


        function searchBtnClick() {
            var keyWords = $("#search").val();
            var matchVagetableName = getMatching(keyWords);
            var needDisplayVegetable = getNeedDisplayVegetable(matchVagetableName);
            //将数据存入session，display页面用
            headSession.setItem('vegetables', JSON.stringify(needDisplayVegetable));
            if (needDisplayVegetable.length > 0) {
                window.location.href = '${ctx}/displayVegetable';
            } else {
                alert('搜索的数据不存在，请重新输入');
            }
        }

        $("#searchBtn").click(function () {
            searchBtnClick();
        })
        /**
         * 监听回车按钮
         * */
        $("#search").keyup(function () {
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if (e && e.keyCode == 13) { // enter 键
                searchBtnClick();
            }
        })


        /**
         * 获取搜索出来的蔬菜
         * @param matchVagetableName
         * @returns {Array}
         */
        function getNeedDisplayVegetable(matchVagetableName) {
            var needDisplayVegetable = [];
            var i;
            for (i in vegetableArr) {
                var name = vegetableArr[i].vegetableName;
                for (var j = 0; j < matchVagetableName.length; j++) {
                    if (matchVagetableName[j] == name) {
                        needDisplayVegetable.push(vegetableArr[i]);
                    }
                }
            }
            return needDisplayVegetable;
        }

        /**
         * 通过匹配，获取匹配出来的蔬菜名
         * @param keyWords
         * @returns {Array}
         */
        function getMatching(keyWords) {
            var vegetableNameArr = getVegetableName();
            var reg = new RegExp(keyWords);
            var matchArr = [];
            for (var i = 0; i < vegetableNameArr.length; i++) {
                //如果字符串中不包含目标字符会返回-1
                if (vegetableNameArr[i].match(reg)) {
                    matchArr.push(vegetableNameArr[i]);
                }
            }
//            console.log(matchArr);
            return matchArr;
        }

        /**
         * 获取所有的蔬菜名
         * @returns {Array}
         */
        function getVegetableName() {
            var vegetableNameArr = [];
            $.ajax({
                url: '${ctx}/vegetable/findAllVegetable',
                type: 'GET',
                dataType: 'json',
                async: false,
                success: function (data) {
                    //console.log(data);
                    vegetableArr = data;
                    var i;
                    for (i in data) {
                        vegetableNameArr.push(data[i].vegetableName);
                    }
                },
                error: function (error) {
                    console.log(error)
                }
            })
            return vegetableNameArr;
        }
    })

</script>

</body>
</html>
