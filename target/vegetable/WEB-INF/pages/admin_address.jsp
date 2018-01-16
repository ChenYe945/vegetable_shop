
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body>
<%@include file="headForAdmin.jsp" %>
<link href="${ctx}/css/admin.css" rel="stylesheet">
<div class="admin_out">
    <div class="admin_vegetableMessage main">
        <table id="admin_vegetable" style="width: 950px;" class="easyui-datagrid" title="地址信息表"
               data-options="rownumbers:true,singleSelect:true,url:'${ctx}/address/findAllAddress',method:'get'">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th data-options="field:'addressId',width:80">地址id</th> <th data-options="field:'userId',width:80">蔬菜类型</th>
                <th data-options="field:'userId',width:120,align:'right'">用户id</th>
                <th data-options="field:'region',width:80,align:'right'">城市</th>
                <th data-options="field:'address',width:140,align:'right'">地址</th>
                <th data-options="field:'email',width:120">邮箱</th>
                <th data-options="field:'addresstype',width:80,align:'center'">地址类型</th>
                <th data-options="field:'consignee',width:80,align:'right'">收件人姓名</th>
                <th data-options="field:'phone',width:120,align:'right'">电话</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<script>
    $('#navigationBar>li>a').removeClass('active')
    $('#addressController a').addClass('active')
</script>
</body>
</html>
