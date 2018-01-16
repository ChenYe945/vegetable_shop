
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
        <table id="admin_vegetable" style="width: 415px;height: auto" class="easyui-datagrid" title="购物车信息表"
               data-options="rownumbers:true,singleSelect:true,url:'${ctx}/shopCar/findAllShopCar',method:'get'">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th data-options="field:'shopcarId',width:80">购物车id</th>
                <th data-options="field:'userId',width:80">用户id</th>
                <th data-options="field:'vegetableId',width:80,align:'right'">蔬菜ID</th>
                <th data-options="field:'supplierId',width:80,align:'right'">供应商ID</th>

            </tr>
            </thead>
        </table>
    </div>
</div>

<script>
    $('#navigationBar>li>a').removeClass('active')
    $('#shopCarController a').addClass('active')
</script>
</body>
</html>
