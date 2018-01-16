
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
        <table id="admin_vegetable" style="width: 580px;" class="easyui-datagrid" title="评价信息表"
               data-options="rownumbers:true,singleSelect:true,url:'${ctx}/opinion/findAllOpinion',method:'get'">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th data-options="field:'opinionId',width:80">评价id</th>
                <th data-options="field:'userId',width:80">用户id</th>
                <th data-options="field:'vegetableId',width:80,align:'right'">蔬菜ID</th>
                <th data-options="field:'opinionText',width:120,align:'right'">评价信息ID</th>
                <th data-options="field:'opinionTime',width:120">评价时间</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<script>
    $('#navigationBar>li>a').removeClass('active')
    $('#opinionController a').addClass('active')
</script>
</body>
</html>
