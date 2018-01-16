<%--
  Created by IntelliJ IDEA.
  User: Kenton
  Date: 2017/4/13
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="../common/common.jsp" %>
    <%@include file="../common/hasLogin.jsp" %>
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
    <script src="${ctx}/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${ctx}/js/skin/default/layer.css">

</head>
<body>
<%@include file="headForAdmin.jsp" %>
<link href="${ctx}/css/admin.css" rel="stylesheet">

<div class="admin_out">
    <div class="admin_userMessage main">
        <div id="tb" style="padding:5px;height:auto">
            <div style="margin-bottom:5px">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addUser()"></a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()"></a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()"></a>
            </div>

        </div>
        <table id="admin_user" style="width: 776px;height: 500px" class="easyui-datagrid" title="用户信息表" toolbar="#tb"
               data-options="rownumbers:true,singleSelect:true,url:'${ctx}/user/findAllUser',method:'get'">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th data-options="field:'userId',width:80">用户ID</th>
                <th data-options="field:'userTypeId',width:80">用户类型ID</th>
                <th data-options="field:'userName',width:100,align:'right'">用户名</th>
                <th data-options="field:'userPhone',width:120,align:'right'">电话</th>
                <th data-options="field:'userPassword',width:120">密码</th>
                <th data-options="field:'userAddress',width:120,align:'center'">地址</th>
                <th data-options="field:'userBalance',width:40,align:'right'">余额</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
<div id="layer_add">
    <div class="add_container">
        <ul>
            <li>用户类型：
                <select  style="width:120px;"class="add_select">
                    <option>请选择用户类型</option>
                    <option value="1">管理员</option>
                    <option value="2">批发商</option>
                    <option value="3">普通用户</option>
                </select>
            </li>
            <li>用户名：<input id="name" class="easyui-textbox" type="text" data-options="prompt:'请输入用户名.',validType:'name'"
                           style="width:100%;height:32px">
            </li>
            <li>电话：<input id="telPhone" class="easyui-textbox" type="text" data-options="prompt:'请输入电话号码.',validType:'tel'"
                          style="width:100%;height:32px">
            </li>
            <li>
                密码：<input id="password" class="easyui-textbox" type="text" data-options="prompt:'请输入密码.',validType:'password'"
                          style="width:100%;height:32px">

            </li>
            <li>地址：<input id="address" class="easyui-textbox" type="text" data-options="prompt:'请输入地址.',validType:'address'"
                          style="width:100%;height:32px">

            </li>

        </ul>
    </div>

</div>
<div id="layer_edit">
    <div class="edit_container">
        <ul>
            <li>用户名:<input id="edit_name" class="easyui-textbox" type="text" data-options="prompt:'请输入用户名.',validType:'name'"
                            style="width:200px;height:32px;margin-left: 20px;">
            </li>
            <li>用户类型:<span class="edit_userType" style="font-size: 14px;color: blue">fdsaf</span></li>
            <li>密码：<input id="edit_password" class="easyui-textbox" type="password" data-options="prompt:'请输入密码.',validType:'password'"
                          style="width:200px;height:32px;margin-left: 20px;">
            </li>
            <li>电话：<input class="easyui-textbox edit_phone" type="tel" data-options="prompt:'请输入11位手机号码.',validType:'telphone'"
                          style="width:200px;height:32px;margin-left: 20px;"></li>
            <li>地址：<input id="edit_address" class="easyui-textbox" type="text" data-options="prompt:'请输入地址.',validType:'address'"
                          style="width:200px;height:32px;margin-left: 20px;"></li>
        </ul>
    </div>
</div>
<script src="${ctx}/js/layer.js"></script>
<script>
    $(function () {
        $('#layer_add').hide();
        $('#layer_edit').hide();
        $('#navigationBar>li>a').removeClass('active')
        $('#userController a').addClass('active')

    })
    function addUser() {
        var index1 = layer.open({
            content: $('#layer_add')
            , type: 1
            , title: '添加用户信息'
            , btn: ['确定', '取消']
            , yes: function (index) {
                var name = $("#name").textbox('getValue');
                var telPhone = $("#telPhone").textbox('getValue');
                var password = $("#password").textbox('getValue');
                var address = $('#address').textbox('getValue');
                var userType = $(".add_select option:selected").val();
                if(name==''||telPhone==""||password==''||address==""){
                    layer.msg('您的输入不能为空', {icon: 5,time:1000});
                }else if(isNaN(userType)) {
                    layer.msg('请选择用户类型', {icon: 5,time:1000});
                }else if(!checkUser(name)){
                    layer.msg('用户名输入错误', {icon: 5,time:1000});
                }else if(!checkMobile(telPhone)){
                    layer.msg('电话号码格式错误', {icon: 5,time:1000});
                }else if(password.length<6){
                    layer.msg('密码不能小于6位', {icon: 5,time:1000});
                }else if(isExistenceUser(telPhone)){
                    layer.msg('用户名已存在', {icon: 5,time:1000});
                }else {
                    $.ajax({
                        url: '${ctx}/user/insertUser',
                        type: "POST",
                        data: {'userTypeId': userType, 'userName': name, 'userPassword': password, 'userPhone': telPhone,'userAddress':address,'userBalance':0},
                        dataType: "text",
                        success: function (data) {
                            layer.close(index);
                            window.location.reload();
                        }
                    });

                }

            }
            , btn2: function (index) {
                $.each($('.add_container>ul>li>input'),function (i,each) {
                    $(each).textbox('setValue', "");
                })
                layer.close(index)
            }
            , cancel: function (index) {
                $.each($('.add_container>ul>li>input'),function (i,each) {
                    $(each).textbox('setValue', "");
                })
                layer.close(index)
            }
        });
        layer.style(index1, {
            width: '500px',
            height: '400px'
        });
    }
    function checkUser(str) {
        var re = /^[a-zA-Z\d]\w{2,10}[a-zA-Z\d]$/;
//        var re = /^[a-zA-z]\w{3,15}$/;
        if (re.test(str)) {
            return true;
        } else {
            return false;
        }
    }
    function checkMobile(str) {
        var re = /^1\d{10}$/
        if (re.test(str)) {
            return true
        } else {
            return false;
        }
    }

    function isExistenceUser(phone) {
        var userData;
        $.ajax({
            url: '${ctx}/user/findAllUser',
            type: "GET",
            async: false,
            dataType: "json",
            success: function (data) {
                userData = data;
            },
            error: function (error) {
                console.log(error)
            }
        });
        var has = false;
        for (var i = 0; i < userData.length; i++) {
            if (phone == userData[i].userPhone) {
                has = true;
            }
        }
        if(has){
            return true;
        }else {
            return false;
        }
    }
    function editUser() {
        var row = $('#admin_user').datagrid('getSelected');
        if(row!=null){
            var indexEdit = layer.open({
                content: $('#layer_edit')
                ,success:function (layero, index) {
                    if (row){
                        $.ajax({
                            url:'${ctx}/user/selectUserTypeByID',
                            type:'POST',
                            dataType:'json',
                            data:{'userTypeID':row.userTypeId},
                            success:function (data) {
                                $('.edit_userType').text(data.iserTypeName)
                            },error:function (error) {
                                console.log(error)
                            }
                        })
                        $('#edit_name').textbox('setValue',row.userName);
                        $('#edit_password').textbox('setValue',row.userPassword);
                        $('.edit_phone').textbox('setValue',row.userPhone);
                        $('#edit_address').textbox('setValue',row.userAddress);
                    }

                }
                ,id:'edit'
                ,style:{width: '500px'}
                , type: 1
                , title: '编辑用户信息'
                , btn: ['确定', '取消']
                , yes: function (index){
                    var editName = $('#edit_name').textbox('getValue');
                    var edit_password = $("#edit_password").textbox('getValue');
                    var edit_phone = $('.edit_phone').textbox('getValue');
                    var edit_address = $('#edit_address').textbox('getValue');
                    console.log(editName);
                    if(editName==''){
                        layer.msg('用户名不能为空', {icon: 5, time: 1000});
                    }else if(edit_password==''){
                        layer.msg('密码不能为空', {icon: 5, time: 1000});
                    }else if(edit_address==''){
                        layer.msg('地址不能为空', {icon: 5, time: 1000});
                    }else if(edit_phone==''){
                        layer.msg('电话号码不能为空', {icon: 5, time: 1000});
                    }else {
                        $.ajax({
                            url: '${ctx}/user/updateUserByUserID',
                            type: 'POST',
                            dataType: 'text',
                            data: {
                                'userTypeId': row.userTypeId,
                                'userName': editName,
                                'userPhone': edit_phone,
                                'userPassword': edit_password,
                                'userAddress': edit_address,
                                'userBalance': row.userBalance,
                                'userId':row.userId
                            },
                            success: function (data) {
                                if (data == 'editSuccess') {
                                    layer.msg('修改成功', {icon: 6, time: 1000});
                                    layer.close(index)
                                    window.location.reload();
                                }
                            }, error: function (error) {
                                console.log(error)
                            }
                        })
                    }


                },
                btn2: function (index){
                    layer.close(index)
                }, cancel: function (index){
                    layer.close(index)
                }
            })
            layer.style(indexEdit, {
                width: '400px',
                height: '300px'
            });
        }else {
            layer.msg('请选择需要编辑项', {icon: 5,time:1000});

        }
    }
    function removeUser() {
        var row = $('#admin_user').datagrid('getSelected');
        if(row!=null){
            var deleteUserID = row.userId;
            $.ajax({
                url: '${ctx}/user/deleteUserByID',
                type: 'POST',
                dataType: 'text',
                data: {
                    'userId':deleteUserID
                },
                success: function (data) {
                    if(data=='deleteSuccess'){
                        window.location.reload();
                    }
                }, error: function (error) {
                    console.log(error)
                }
            })
        }else {
            layer.msg('请选择需要删除的用户', {icon: 5,time:1000});
        }
    }

</script>
</body>
</html>
