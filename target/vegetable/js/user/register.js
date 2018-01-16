/**
 * Created by Kenton on 2017/3/17.
 */
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
 * 验证电话号码
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
 * 验证手机号码
 * @param str
 */
function checkPhone(str){
    var re = /^0\d{2,3}-?\d{7,8}$/;
    if(re.test(str)){
        return true
    }else{
        return false;
    }
}

/**
 * 验证两次输入密码是否相同
 */
function checkPassword(password,rePassword) {
    if(password==rePassword){
        return true;
    }else {
        return false;
    }
}

function checkFormatOrNull(user) {
    if(user.userName==""){
        alert('用户名不能为空');
        return false;
    }else if(user.telPhone==""){
        alert('电话号码不能为空')
        return false;
    }else if(user.password==""){
        alert('密码不能为空')
        return false;
    }else if(user.rePassword==""){
        alert('请再次输入密码');
        return false;
    }else if(user.userType==1){
        alert('对不起，你没有注册管理员账户的权限');
        return false;
    }else if(!user.isFormatUserName){
        alert('用户名格式不正确');
        return false;
    }else if(!user.isFormatMobilePhone&&!user.isFormatTelPhone){
        alert('电话号码输入不正确');
        return false;
    }else if(!user.isSamePassword){
        alert('两次密码输入不相同');
        return false;
    }else if(user.password.length<6||user.rePassword.length<6){
        alert('密码长度不能小于六位');
        return false;
    }else if(user.isExistenceUser){
        alert('账号已存在');
        return false;
    }
    else {
        return true;
    }
}
function isExistenceUser(user) {
    var userData;
    $.ajax({
        url: '${ctx}/user/findAllUser',
        type: "GET",
        async:false,
        dataType: "json",
        success: function (data) {
            console.log(data);
            userData = data;
        },
        error:function (error) {
            console.log(error)
        }
    });
    for(var i=0;i<userData.length;i++){
        if(user.telPhone ==userData[i].userPhone){
            return true;
        }else {
            return false;
        }
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
    var isSamePassword = checkPassword(password,rePassword);
    var userType = $('#userType input[type="radio"][name="adminFlag"]:checked').val();
    userType = parseInt(userType)+1;
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
    if(canRegister){

        $.ajax({
            url: '${ctx}/user/insertUser',
            type: "POST",
            data: {'userTypeId': userType, 'userName': userName, 'userPassword': rePassword, 'userPhone': telPhone},
            dataType: "text",
            success: function (data) {
                window.location.href = "${ctx}/"+data;
            }
        });
    }

})