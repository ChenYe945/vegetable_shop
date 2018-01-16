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
    <link rel="stylesheet" href="${ctx}/css/noSearchBox.css">
</head>
<body>
<%@include file="headForAdmin.jsp" %>
<link href="${ctx}/css/admin.css" rel="stylesheet">
<div class="admin_out">
    <div class="admin_vegetableMessage main">
        <table id="admin_vegetable" style="width: 836px;height: 500px" class="easyui-datagrid" title="蔬菜信息表"
               data-options="rownumbers:true,singleSelect:true,url:'${ctx}/vegetable/findAllVegetable',method:'get'">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th data-options="field:'vegetableId',width:80">蔬菜id</th>
                <th data-options="field:'vegetableTypeId',width:80">蔬菜类型</th>
                <th data-options="field:'vegetableProducedId',width:80,align:'right'">生产地ID</th>
                <th data-options="field:'supplierId',width:80,align:'right'">供应商ID</th>
                <th data-options="field:'vegetableName',width:80">蔬菜名</th>
                <th data-options="field:'vegetablePrice',width:80,align:'center'">蔬菜价格</th>
                <th data-options="field:'vegetableDescribe',width:120,align:'right'">蔬菜描述</th>
                <th data-options="field:'vegetablePicture',width:120,align:'right'">蔬菜图片</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<script>
    $('#navigationBar>li>a').removeClass('active')
    $('#vegetableController a').addClass('active')
</script>
</body>
</html>
