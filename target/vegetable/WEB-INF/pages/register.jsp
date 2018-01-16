<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <title>注册</title>
    <link rel="stylesheet" href="${ctx}/css/register.css">
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body style="padding: 0">

<%@include file="header.jsp" %>

<div class="line"></div>
<form method="get" action="">
    <div class="regist">
        <div class="easyui-panel " id="register" title="Register" style="width:400px;padding:30px 60px">
            <div style="margin-bottom:20px">
                <div>用户名:</div>
                <input id="userName" class="easyui-textbox" type="text" data-options="prompt:'请输入用户名.',validType:'tel'"
                       style="width:100%;height:32px">
            </div>
            <div style="margin-bottom:20px">
                <div>电话:</div>
                <input id="telPhone" class="easyui-textbox" type="tel" data-options="prompt:'请输入电话号码.',validType:'tel'"
                       style="width:100%;height:32px">
            </div>
            <div style="margin-bottom:20px">
                <div>密码:</div>
                <input id="password" class="easyui-textbox" type="password"
                       data-options="prompt:'请输入密码.',validType:'password'"
                       style="width:100%;height:32px">
            </div>
            <div style="margin-bottom:20px">
                <div>确认密码:</div>
                <input id="password2" class="easyui-textbox" type="password"
                       data-options="prompt:'请重新输入密码.',validType:'password'"
                       style="width:100%;height:32px">
            </div>
            <div style="margin-bottom:20px" id="userType">
                <div>用户类型:</div>
                <span class="radioSpan" id="register_radio">
                <input type="radio" name="adminFlag" value="0" checked>管理员</input>
                    <input type="radio" name="adminFlag" value="1">供应商</input>
                    <input type="radio" name="adminFlag" value="2">普通用户</input>

            </span>
            </div>
            <div>
                <a href="#" id="registerBtn" class="easyui-linkbutton" type="submit" iconCls="icon-ok"
                   style="width:100%;height:32px">注册</a>
            </div>
        </div>
    </div>
</form>
<%@include file="footer.jsp" %>
</body>
<script>
    /**
     * 验证用户名
     * */
    function checkUser(str) {
        var re = /^[a-zA-z]\w{3,15}$/;
        if (re.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 验证手机号码
     * @param str
     * @returns {boolean}
     */
    function checkMobile(str) {
        var re = /^1\d{10}$/
        if (re.test(str)) {
            return true
        } else {
            return false;
        }
    }
    /**
     * 验证固定电话号码
     * @param str
     */
    function checkPhone(str) {
        var re = /^0\d{2,3}-?\d{7,8}$/;
        if (re.test(str)) {
            return true
        } else {
            return false;
        }
    }

    /**
     * 验证两次输入密码是否相同
     */
    function checkPassword(password, rePassword) {
        if (password == rePassword) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * 判断输入格式是否正确
     * */

    function checkFormatOrNull(user) {
        if (user.userName == "") {
            $.messager.alert('提示信息','用户名不能为空');
            return false;
        } else if (user.telPhone == "") {
            $.messager.alert('提示信息','电话号码不能为空')
            return false;
        } else if (user.password == "") {
            $.messager.alert('提示信息','密码不能为空')
            return false;
        } else if (user.rePassword == "") {
            $.messager.alert('提示信息','请再次输入密码');
            return false;
        } else if (user.userType == 1) {
            $.messager.alert('提示信息','对不起，你没有注册管理员账户的权限,请切换用户类型');
            return false;
        } else if (!user.isFormatUserName) {
            $.messager.alert('提示信息','用户名格式不正确');
            return false;
        } else if (!user.isFormatMobilePhone && !user.isFormatTelPhone) {
            $.messager.alert('提示信息','电话号码输入不正确');
            return false;
        } else if (!user.isSamePassword) {
            $.messager.alert('提示信息','两次密码输入不相同');
            return false;
        } else if (user.password.length < 6 || user.rePassword.length < 6) {
            $.messager.alert('提示信息','密码长度不能小于六位');
            return false;
        } else if (user.isExistenceUser) {
            $.messager.alert('提示信息','账号已存在');
            return false;
        }
        else {
            return true;
        }
    }
    /**
     * 判断用户是否存在
     * @param user
     * @returns {boolean}
     */
    function isExistenceUser(user) {
        var userData;
        $.ajax({
            url: '${ctx}/user/findAllUser',
            type: "GET",
            async: false,
            dataType: "json",
            success: function (data) {
                console.log(data);
                userData = data;
            },
            error: function (error) {
                console.log(error)
            }
        });
        var has = false;
        for (var i = 0; i < userData.length; i++) {
            if (user.telPhone == userData[i].userPhone) {
                has = true;
            }
        }
        if(has){
            return true;
        }else {
            return false;
        }
    }


    $("#registerBtn").click(function () {
        var userName = $("#userName").val();
        var isFormatUserName = checkUser(userName);
        var telPhone = $("#telPhone").val();
        var isFormatMobilePhone = checkMobile(telPhone);
        var isFormatTelPhone = checkPhone(telPhone);
        var password = $("#password").val();
        var rePassword = $("#password2").val();
        var isSamePassword = checkPassword(password, rePassword);
        var userType = $('#userType input[type="radio"][name="adminFlag"]:checked').val();
        userType = parseInt(userType) + 1;
        var user = {};
        user.userName = userName;
        user.telPhone = telPhone;
        user.password = password;
        user.userType = userType;
        user.rePassword = rePassword;
        user.isFormatUserName = isFormatUserName;
        user.isFormatMobilePhone = isFormatMobilePhone;
        user.isFormatTelPhone = isFormatTelPhone;
        user.isSamePassword = isSamePassword;
        user.isExistenceUser = isExistenceUser(user);
        var canRegister = checkFormatOrNull(user);
        if (canRegister) {
            $.ajax({
                url: '${ctx}/user/insertUser',
                type: "POST",
                data: {'userTypeId': userType, 'userName': userName, 'userPassword': rePassword, 'userPhone': telPhone},
                dataType: "text",
                success: function (data) {
                    window.location.href = "${ctx}/" + data;
                }
            });
        }

    })
</script>
</html>
