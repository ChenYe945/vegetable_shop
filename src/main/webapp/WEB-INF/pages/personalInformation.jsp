<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <title>个人信息</title>
    <%@include file="../common/hasLogin.jsp" %>
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body>

<%@include file="header.jsp" %>

<link rel="stylesheet" href="${ctx}/css/personalInformation.css">
<div class="personalInformation_container_out">
    <div class="personalInformation_container_inForBase">
        <div class="personalInformation_container_title">
            <h4>基本信息</h4>
        </div>
        <div class="personalInformation_container_main">
            <ul class="message">
                <li><span>用户名：</span></li>
                <li><input id="userName" type="text" value=""></li>
            </ul>
            <ul class="message">
                <li><span>电话号码：</span></li>
                <li><span class="loginPhone forHeight"
                          style="font-size: 12px;font-weight: bold;font-family:'SimSun', '宋体', 'Arial Narrow'"></span>
                </li>
                <li style="font-size: 10px;line-height: 30px;height: 30px;margin-left: 30px">可用于登录，请牢记哦~</li>
            </ul>
            <ul class="message">
                <li><span>用户类型：</span></li>
                <li class="forHeight"
                    style="font-size: 12px;font-weight: bold;font-family:'SimSun', '宋体', 'Arial Narrow'">
                    <span class="userType">用户类型：</span></li>
            </ul>
            <ul class="message">
                <li><span>地址：</span></li>
                <li><input class="loginAddress" type="text" value=""></li>
                <span class="pleaseWriteAddress"
                      style="font-size: 12px;margin-left: 30px;color: red;height: 30px;line-height: 30px"></span></li>
            </ul>
            <ul class="message">
                <li><span>密码：</span></li>
                <li><input id="userPassword" type="text"></li>
            </ul>

            <ul class="message">
                <li>兴趣爱好：</li>
                <li class="forHeight" style="font-size: 12px">请选择您感兴趣的分类，给您最精准的推荐</li>
            </ul>
            <div class="loved">
                <ul>
                    <li>图书/音像/数字商品</li>
                    <li>家用电器</li>
                    <li>手机/数码</li>
                    <li>电脑/办公</li>
                    <li>家居/家具/家装/厨具</li>
                    <li>服饰内衣/珠宝首饰</li>
                    <li>个护化妆</li>
                    <li>鞋靴/箱包/钟表/奢侈品</li>
                    <li>运动健康</li>
                    <li>汽车用品</li>
                    <li>母婴/玩具乐器</li>
                    <li>食品饮料/保健食品</li>
                    <li>彩票/旅行/充值/票务</li>
                </ul>
            </div>
            <ul class="message">
                <li><span>真实姓名：</span></li>
                <li><input id="reallyName" type="text"></li>
            </ul>
        </div>
    </div>
    <div class="smallPanel">
        <div class="smallPanelForShow">
            <img src="${ctx}/imgs/head.jpg">
            <div>
                <ul>
                    <li><span>用户名：</span><span style="font-weight: bold" class="userName">18140041701_p</span></li>
                    <li><span>小白信用：</span><span>88.5 分</span></li>
                    <li><span>会员类型：</span><span class="userType">个人用户</span></li>
                </ul>
            </div>
        </div>
        <div class="zhu">注：修改手机和邮箱请到<a href="#">修改账户信息</a></div>
    </div>
    <div class="submit"><input id="submitMessage" type="button" value="提交"></div>

</div>
<%@include file="footer.jsp" %>
</body>
<script>

    lovedChangeBorderColor();
    /**
     * 喜好框改变样式
     * */
    function lovedChangeBorderColor() {
        //爱好边框被点击，改变颜色
        $(".loved ul li").click(function (e) {
            e.stopPropagation();
            if ($(this).hasClass('changeBorderColor')) {
                $(this).removeClass('changeBorderColor')
            } else {
                $(this).addClass('changeBorderColor');
            }
        })
    }

    function getUserMessage() {
        var userMesage;
        var userSession = window.sessionStorage;
        var userPhone = userSession.getItem('userName');
        $.ajax({
            url: '${ctx}/user/selectByPhone',
            type: 'POST',
            data: {'telPhone': userPhone},
            async: false,
            dataType: "json",
            success: function (data) {
                userMesage = data;
            },
            error: function (error) {
                console.log(error)
            }
        });
        return userMesage;
    }


    $(function () {
        var userMessage = getUserMessage();
        var userTypeID = userMessage.userTypeId;
        var userID = userMessage.userId;
        $("#userName").val(userMessage.userName);
        $('.loginPhone').text(userMessage.userPhone);
        $('.loginAddress').val(userMessage.userAddress);
        $('#userPassword').val(userMessage.userPassword);
        if (userMessage.userAddress == null) {
            $('.pleaseWriteAddress').text('地址为空，请输入地址.....');
        }
        $('.userName').text(userMessage.userName);

        $.ajax({
            url: '${ctx}/user/selectUserTypeByID',
            type: 'POST',
            data: {'userTypeID': userTypeID},
            async: false,
            dataType: "json",
            success: function (data) {
                $('.userType').text(data.iserTypeName);
                console.log(data);
            },
            error: function (err) {
                console.log(err);
            }
        })
        $('#submitMessage').click(function () {
            submitUserMessage(userID, userTypeID);
        })

    })

    /**
     * 提交用户输入的信息
     * @param userID
     * @param userTypeID
     */
    function submitUserMessage(userID, userTypeID) {
        var name = $("#userName").val();
        var phone = $('.loginPhone').text();
        var address = $('.loginAddress').val();
        var password = $('#userPassword').val();
        var reallyName = $("#reallyName").val();
        if (name == "") {
            alert('用户名不能为空');
        } else if (address == "") {
            alert('请输入您的地址');
        } else if (password == "") {
            alert('密码不能为空');
        } else if (password.length < 6) {
            alert('密码不能小于六位')
        } else if (reallyName == "") {
            alert('请填写真实姓名')
        } else {
            $.ajax({
                url: '${ctx}/user/updateUserByPhone',
                type: "POST",
                data: {
                    'userId': userID,
                    'userTypeId': userTypeID,
                    'userName': name,
                    'userPassword': password,
                    'userPhone': phone,
                    'userAddress': address
                },
                dataType: "text",
                success: function (data) {
                    window.location.href = "${ctx}/" + data;
                }
            });
        }


    }
</script>
</html>
