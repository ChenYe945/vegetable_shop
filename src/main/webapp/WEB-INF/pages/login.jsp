<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <title>登录</title>
    <link href="${ctx}/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body style="padding: 0">
<%@include file="header.jsp" %>

<div class="line"></div>
<div class="login">
    <div class="loginPanel">
        <div class="easyui-panel" title="Login to system" style="width:400px;padding:30px 70px 20px 70px">
            <div style="margin-bottom:10px">
                <input id="loginUserName" class="easyui-textbox" style="width:100%;height:40px;padding:12px"
                       data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
            </div>
            <div style="margin-bottom:20px">
                <input id="loginPassword" class="easyui-textbox" type="password"
                       style="width:100%;height:40px;padding:12px"
                       data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
            </div>
            <div style="margin-bottom:20px">
                <input id="remember" type="checkbox" checked="checked">
                <span>Remember me</span>
            </div>
            <div>
                <a id="loginBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
                   style="padding:5px 0px;width:100%;">
                    <span style="font-size:14px;">登录</span>
                </a>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
<script>
    var userData;
    /**
     * 判断用户是否存在
     * */
    function isUserExistence(userName) {
        var flag = false;
        $.ajax({
            url: '${ctx}/user/findAllUser',
            type: 'GET',
            async: false,
            dataType: "json",
            success: function (data) {
                var i;
                for (i in data) {
                    userData = data;
                    if (userName == data[i].userPhone) {
                        flag = true;
                    }
                }
            },
            error: function (err) {
                console.log(err);
            }
        });

        return flag;
    }

    /**
     * 判断输入的信息是否正确
     * @param userName
     * @param password
     * @returns {boolean}
     */
    var sessionUserID;
    var userType;
    function isRightInput(userName, password) {
        var userIndex;

        for (var i = 0; i < userData.length; i++) {
            if (userName == userData[i].userPhone) {
                userIndex = i;
                sessionUserID = userData[i].userId;
                userType = userData[i]['userTypeId'];
            }
        }
        if (password != userData[userIndex].userPassword) {
            $.messager.alert('提示信息','密码输入错误','error');
            return false;
        } else {
            return true;
        }

    }
    function login() {
        var sessionStorage = window.sessionStorage;
        var userName = $('#loginUserName').val();
        var password = $('#loginPassword').val();

        if (userName == "") {
            //alert('用户名不能为空');
            $.messager.alert('提示信息','用户名不能为空','error');
        } else if (password == "") {
            $.messager.alert('提示信息','密码不能为空','error');
        } else {
            var isExistenceUser = isUserExistence(userName);
            if (!isExistenceUser) {
                $.messager.alert('提示信息','用户名不存在','error');

            } else {
                var isInputRight = isRightInput(userName, password);
                if (isInputRight) {
                    sessionStorage.setItem('currentUserID',sessionUserID);
                    sessionStorage.setItem('userName', userName);
                    sessionStorage.setItem('userPassword', password);
                    if(userType==1){
                        window.location.href = '${ctx}/adminIndex';
                    }else {
                        window.location.href = '${ctx}/index';
                    }

                }
            }
        }
    }

    $("#loginBtn").click(function () {
        login();
    })
    //enter监听事件
    document.onkeydown = function (event) {
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if (e && e.keyCode == 13) { // enter 键
            login();
        }
    };

</script>
</html>
