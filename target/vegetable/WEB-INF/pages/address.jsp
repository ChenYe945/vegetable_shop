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
<link href="${ctx}/css/address.css" rel="stylesheet">
<style>
    .addressMessage .address-title > h4 + span {
        width: 20px;
        height: 20px;
        background: url("${ctx}/imgs/sprite-t-icon.png") no-repeat -47px 4px;
        display: inline-block;
        margin-left: 10px;
        /*float: left;*/

    }

    .addressMessage .address-title > h4 + span + span {
        width: 13px;
        height: 13px;
        background: url("${ctx}/imgs/close.png") no-repeat left top;
        display: inline-block;
        position: absolute;
        top: 10px;
        right: 10px;
        cursor: pointer;
    }

    .addressMessage .address-title > h4 + span:hover {
        background: url("${ctx}/imgs/sprite-t-icon.png") no-repeat -24px 4px;
    }

    .addAddressPanel-top > span {
        width: 16px;
        height: 16px;
        background: url("${ctx}/imgs/bg_thickbox.gif") no-repeat left -17px;
        display: inline-block;
        position: absolute;
        right: 10px;
        margin: 3px;
    }


</style>
<div class="addressContainer">
    <div class="addressContainer-in">
        <div><input class="addAddressBtn" type="button" value="新增收货地址">
            <p>你已创建<span class="addressMessage_length">5</span>个收货地址，最多可创建<span>10</span>个</p>
        </div>
        <div class="noAddress display-none">
            您还未填写收货地址
        </div>
    </div>
</div>

<div class="mask"></div>
<div class="win">
    <div class="win_title">提示信息</div>
    <div class="win_main">您确定要删除本条地址信息吗？</div>
    <div class="win_button">
        <input class="sureBtn" type="button" value="确定">
        <input class="cancelBtn" type="button" value="取消">
    </div>
</div>
<div class="addAddressPanel">
    <div class="addAddressPanel-top">
        添加收货地址<span id="closeAddAddress"></span>
    </div>
    <div class="addAddressPanel-main">
        <ul>
            <li><span>*</span>收货人：</li>
            <li class="li-input"><input type="text" class="address-name" placeholder="请填写收件人姓名"><span id="prompt_name"
                                                                                                      class="address-prompt">*请输入姓名</span>
            </li>
            <li><span>*</span>所在地区：</li>
            <li class="li-input">
                <select id="provinceDiv">
                    <option value="1">四川</option>
                </select>
                <select id="cityDiv">
                    <option>请选择</option>
                </select>
                <span id="showCityMessage" style="color:red;display: none;margin-left: 15px">*请选择城市</span>
            </li>
            <li><span>*</span>详细地址：</li>
            <li class="li-input"><input id="detailMessage" class="detail-address" type="text"
                                        placeholder="请填写详细的地址信息"><span id="prompt_address" class="address-prompt">*请输入详细地址信息</span>
            </li>
            <li><span>*</span>手机号码：</li>
            <li class="li-input"><input id="address_phone" class="address-phone" type="text"
                                        placeholder="请输入11位手机号码"><span id="prompt_phone" class="address-prompt">*请输入11位手机号码</span>
            </li>
            <li>固定电话（选填）：</li>
            <li class="li-input"><input class="address-phone" type="text" placeholder="请输入座机号码"></li>
            <li><span>*</span>邮箱：</li>
            <li class="li-input"><input id="address_email" class="address-email" type="text" placeholder="请填写邮箱"><span
                    id="prompt_email" class="address-prompt">*请输入邮箱</span></li>
            <li><span>*</span>地址别名：</li>
            <li class="li-input">
                <input id="address_alias" class="address-phone" type="text">
                建议填写常用名称<input class="alias" style="margin-left: 10px" type="button" value="家里">
                <input class="alias" type="button" value="公司">
                <input class="alias" type="button" value="父母家">
                <span id="prompt_alias" class="address-prompt">*请输入填写或选择地址别名</span>
            </li>
        </ul>
    </div>
    <div class="addAddressPanel-bottom">
        <input type="button" value="保存收货地址">
    </div>
</div>
<div class="updateAddressPanel">
    <div class="addAddressPanel-top">
        编辑收货地址<span id="closeAddAddress2"></span>
    </div>
    <div class="addAddressPanel-main">
        <ul>
            <li><span>*</span>收货人：</li>
            <li class="li-input"><input type="text" id="updateNameText" class="address-name" placeholder="请填写收件人姓名"><span id="prompt_name2"
                                                                                                      class="address-prompt">*请输入姓名</span>
            </li>
            <li><span>*</span>所在地区：</li>
            <li class="li-input">
                <select id="provinceDiv2">
                    <option value="1">四川</option>
                </select>
                <select id="cityDiv2">
                    <option>请选择</option>
                </select>
                <span id="showCityMessage2" style="color:red;display: none;margin-left: 15px">*请选择城市</span>
            </li>
            <li><span>*</span>详细地址：</li>
            <li class="li-input"><input id="detailMessage2" class="detail-address" type="text"
                                        placeholder="请填写详细的地址信息"><span id="prompt_address2" class="address-prompt">*请输入详细地址信息</span>
            </li>
            <li><span>*</span>手机号码：</li>
            <li class="li-input"><input id="address_phone2" class="address-phone" type="text"
                                        placeholder="请输入11位手机号码"><span id="prompt_phone2" class="address-prompt">*请输入11位手机号码</span>
            </li>

            <li><span>*</span>邮箱：</li>
            <li class="li-input"><input id="address_email2" class="address-email" type="text" placeholder="请填写邮箱"><span
                    id="prompt_email2" class="address-prompt">*请输入邮箱</span></li>
            <li><span>*</span>地址别名：</li>
            <li class="li-input">
                <input id="address_alias2" class="address-phone" type="text">
                建议填写常用名称<input class="update-alias" style="margin-left: 10px" type="button" value="家里">
                <input class="update-alias" type="button" value="公司">
                <input class="update-alias" type="button" value="父母家">
                <span id="prompt_alias2" class="address-prompt">*请输入填写或选择地址别名</span>
            </li>
        </ul>
    </div>
    <div id="undateSave">
        <input type="button" value="保存收货地址">
    </div>
</div>
<%@include file="footer.jsp" %>
<script>
    $(function () {
        function getAlreadySetAddress() {
            return new Promise(function (resolve, reject) {
                $.ajax({
                    url: '${ctx}/address/findAddressByUserID',
                    type: 'GET',
                    dataType: "json",
                    data: {'userId': sessionStorage.getItem('currentUserID')},
                    success: function (data) {
                        resolve(data);
                    },
                    error: function (error) {
                        reject(error);
                    }
                })
            })
        }

        /**
         * 创建div
         * */
        function createDiv(message) {
            var $addressMessage_div = $('<div class="addressMessage" addressId=' + message['addressId'] + '>' +
                '<div class="address-title">' +
                '<h4>公司</h4><span></span><span class="addressPanelClose"></span>' +
                '</div>' +
                '<ul><li>收货人：</li> <li> ' + message['consignee'] + ' </li></ul> ' +
                '<ul> <li> 所在地区：</li> <li> ' + message.region + ' </li> ' +
                '</ul><ul> <li>地址： </li> <li>' + message['address'] + ' </li> </ul>' +
                '<ul> <li>手机： </li> <li>' + message['phone'] + '  </li> </ul> ' +
                '<ul> <li>固定电话： </li> <li> </li> </ul>' +
                '<ul> <li>电子邮箱： </li> <li>' + message.email + '</li></ul>' +
                '<input class="addressUpdate" type="button" value="编辑"> </div>')
            $('.addressContainer-in').append($addressMessage_div);

        }

        getAlreadySetAddress().then(function (messages) {
            //判断当前用户是否已有收货地址
            if (messages.length == 0) {
                $('.noAddress').removeClass('display-none');
                $(".addressContainer").height(167);
            }
            if (messages.length > 0) {
                $(".addressMessage_length").text(messages.length);
                var isDisplay = $('.noAddress').hasClass('display-none');
                if (!isDisplay) {
                    $('.noAddress').addClass('display-none');
                }
                var i;
                for (i in messages) {
                    createDiv(messages[i]);

                }
                var containerHeight = $(".addressMessage").length * 220 + 93;
                $(".addressContainer").height(containerHeight);

            }
            return messages;

        }).then(function (messages) {
            //添加收货地址
            $('.addAddressBtn').click(function () {
                if ($('.addressMessage').length > 9) {
                    alert('您已经有10条收货地址，请删除后再创建')
                } else {
                    $('.mask').show();
                    center($('.addAddressPanel'));
                    $.ajax({
                        url: '${ctx}/address/findAllCity',
                        type: 'GET',
                        dataType: 'json',
                        async: false,
                        success: function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var cityName = data[i]['cityName'];
                                var $option = $('<option value=' + data[i]['cityId'] + '>' + cityName + '</option>');
                                $("#cityDiv").append($option);
                            }
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    })
                }


            })
            //关闭添加收货地址弹出框
            $("#closeAddAddress").click(function () {
                closed($('.mask'), $('.addAddressPanel'));
                window.location.href = '${ctx}/address';
            })
            //删除收货地址按钮
            $(".addressPanelClose").click(function () {
                $('.mask').show();
                center($('.win'));
                check($(this), $('.sureBtn'), $('.cancelBtn'));
            })

            //地址别名点击按钮直接赋值
            $('.li-input .alias').click(function () {
                $("#address_alias").val($(this).val());
            })

            //添加收货地址保存按钮点击事件
            $(".addAddressPanel-bottom input").click(function () {
                var name = $('.address-name').val();
                var optionIndex = $("#cityDiv ").get(0).selectedIndex;
                var detailAddress = $("#detailMessage").val();
                var address_phone = $("#address_phone").val();
                var address_email = $("#address_email").val();
                var address_alias = $("#address_alias").val();
                if (name == "") {
                    $("#prompt_name").show();
                } else if (optionIndex == 0) {
                    $("#showCityMessage").show();
                } else if (detailAddress == "") {
                    $("#prompt_address").show();
                } else if (address_phone == "") {
                    $("#prompt_phone").text('*请输入手机号码');
                    $("#prompt_phone").show();
                } else if (address_email == "") {
                    $("#prompt_email").text('*请输入邮箱');
                    $("#prompt_email").show();
                } else if (address_alias == "") {
                    $("#prompt_alias").show();
                } else if (!checkPhone(address_phone)) {
                    $(".address-prompt").hide();
                    $("#prompt_phone").text('*手机号码输入不正确');
                    $("#prompt_phone").show();
                } else if (!checkEmail(address_email)) {
                    $(".address-prompt").hide();
                    $("#prompt_email").text('*邮箱格式不正确');
                    $("#prompt_email").show();
                }
                else {
                    var city = $('#cityDiv option:selected').text();
                    var userID = sessionStorage.getItem('currentUserID');
                    $.ajax({
                        url: '${ctx}/address/insertAddress',
                        type: "POST",
                        dataType: 'text',
                        data: {
                            'userId': userID,
                            'region': city,
                            'address': '四川省' + city + detailAddress,
                            'email': address_email,
                            'addresstype': address_alias,
                            'consignee': name,
                            'phone': address_phone
                        },
                        success: function (data) {
//                            console.log(data);
                            closed($('.mask'), $('.addAddressPanel'));
                            window.location.href = '${ctx}/address';
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    })

                }

            })





            //======================收货地址编辑功能=======================================
            $(".addressUpdate").click(function () {
                updateAddress($(this));

            })
            //关闭编辑收货地址弹出框
            $("#closeAddAddress2").click(function () {
                closed($('.mask'), $('.updateAddressPanel'));
                window.location.href = '${ctx}/address';
            })
            //地址别名点击按钮直接赋值
            $('.li-input .update-alias').click(function () {
                $("#address_alias2").val($(this).val());
            })
            $("#undateSave input").click(function () {
                var name_up = $('#updateNameText').val();
                var optionIndex_up = $("#cityDiv2 ").get(0).selectedIndex;
                var detailAddress_up = $("#detailMessage2").val();
                var address_phone_up = $("#address_phone2").val();
                var address_email_up = $("#address_email2").val();
                var address_alias_up = $("#address_alias2").val();
                if (name_up == "") {
                    $("#prompt_name2").show();
                } else if (optionIndex_up == 0) {
                    $("#showCityMessage2").show();
                } else if (detailAddress_up == "") {
                    $("#prompt_address2").show();
                } else if (address_phone_up == "") {
                    $("#prompt_phone2").text('*请输入手机号码');
                    $("#prompt_phone2").show();
                } else if (address_email_up == "") {
                    $("#prompt_email2").text('*请输入邮箱');
                    $("#prompt_email2").show();
                } else if (address_alias_up == "") {
                    $("#prompt_alias2").show();
                } else if (!checkPhone(address_phone_up)) {
                    $(".address-prompt").hide();
                    $("#prompt_phone2").text('*手机号码输入不正确');
                    $("#prompt_phone2").show();
                } else if (!checkEmail(address_email_up)) {
                    $(".address-prompt").hide();
                    $("#prompt_email2").text('*邮箱格式不正确');
                    $("#prompt_email2").show();
                }
                else {
                    var city_up = $('#cityDiv2 option:selected').text();
                    var userID_up = sessionStorage.getItem('currentUserID');
                    var id = $("#undateSave input").data('currentAddressID');
                    $.ajax({
                        url: '${ctx}/address/updateAddress',
                        type: 'POST',
                        dataType: 'text',
                        data:{'userId':userID_up,'region':city_up,'address':detailAddress_up,
                            'email':address_email_up,'addresstype':address_alias_up,
                            'consignee':name_up,'phone':address_phone_up,'addressId':id
                        },
                        success: function (data) {
                            if(data=='success'){
                                window.location.href = '${ctx}/address';
                            }
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    })
                }

            })
            function updateAddress(obj) {
                var currentAddressID = obj.parent().attr('addressid');
                $("#undateSave input").data('currentAddressID',currentAddressID);

                $.ajax({
                    url: '${ctx}/address/findAllCity',
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        for (var i = 0; i < data.length; i++) {
                            var cityName_up = data[i]['cityName'];
                            var $option_up = $('<option value=' + data[i]['cityId'] + '>' + cityName_up + '</option>');
                            $("#cityDiv2").append($option_up);
                        }
                    },
                    error: function (error) {
                        console.log(error);
                    }
                })
                $.ajax({
                    url: '${ctx}/address/findAddressByID',
                    type: 'POST',
                    dataType: 'json',
                    data:{'addressId':currentAddressID},
                    success: function (data) {
                        $('#updateNameText').val(data.consignee);
                        $("#detailMessage2").val(data.address);
                        $("#address_phone2").val(data.phone);
                        $("#address_email2").val(data.email);
                        $("#address_alias2").val(data.addresstype)

                    },
                    error: function (error) {
                        console.log(error);
                    }
                })
                $('.mask').show();
                center($('.updateAddressPanel'));


            }

        }).catch(function (e) {
            console.log(e)
        })
        //----------------------------------
        /**
         * 验证手机号码
         * */
        function checkPhone(str) {
            var re = /^1\d{10}$/
            if (re.test(str)) {
                return true
            } else {
                return false;
            }
        }

        /**
         * 验证邮箱
         * */
        function checkEmail(str) {
            var myReg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
            if (myReg.test(str)) {
                return true;
            } else {
                return false;
            }
        }


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

        //确定取消的操作
        function check(obj, obj1, obj2) {
            obj1.click(function () {
                closed($('.mask'), $('.win'));
                var container = obj.parent().parent();
                $(container).hide();
                var currentAddressID = obj.parent().parent().attr('addressid');
                $.ajax({
                    url: '${ctx}/address/deleteAddressByID',
                    type: 'POST',
                    dataType: 'text',
                    data: {'addressId': currentAddressID},
                    success: function (data) {
                        if (data == 'success') {
                            window.location.href = '${ctx}/address';
                        }

                    },
                    error: function (error) {
                        console.dir(error);
                    }
                })

            });
            obj2.click(function () {
                closed($('.mask'), $('.win'));
            });
        }

        // 隐藏 的操作
        function closed(obj1, obj2) {
            obj1.hide();
            obj2.hide();
        }
    })
</script>

</body>
</html>
