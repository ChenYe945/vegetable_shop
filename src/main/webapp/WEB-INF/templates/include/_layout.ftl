<#-- 引入自定义css、js文件 -->
<#macro script_import></#macro>
<#macro css_import></#macro>
<#-- 公共布局 -->
<#macro layout>
<#assign root=RC.contextPath>
<#if Session["user"] ??>
    <#-- 设置模板变量方便调用 -->
    <#assign u=Session["user"]>
</#if>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>灵鸟网</title>
    <link rel="icon" type="image/x-icon" href="${root}/images/favicon.ico">
    <link rel="shortcut icon" href="${root}/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${root}/widget/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${root}/widget/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${root}/widget/iCheck/skins/flat/blue.css">
    <@css_import />
    <#if css ??>
    <style type="text/css">
        <@css />
    </style>
    </#if>
    <link rel="stylesheet" href="${root}/css/common.css">
</head>
<body data-path="${root}">
<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <!-- 导航头部 -->
        <div class="navbar-header">
            <!-- 移动设备上的导航切换按钮 -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-example">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- 品牌名称或logo -->
            <a class="navbar-brand" href="${root}/">ZeroBird</a>
        </div>
        <!-- 导航项目 -->
        <div class="collapse navbar-collapse navbar-collapse-example">
            <ul class="nav navbar-nav">
                <li><a href="${root}/index"><i class="fa fa-home" aria-hidden="true"></i> 首页</a></li>
                <li data-developing><a href="javascript:void(0);"><i class="fa fa-diamond" aria-hidden="true"></i> 社区</a></li>
                <li data-developing><a href="javascript:void(0);"><i class="fa fa-cube" aria-hidden="true"></i> 项目</a></li>
                <li data-developing><a href="javascript:void(0);"><i class="fa fa-coffee"></i> 说两句</a></li>
                <li data-developing><a href="javascript:void(0);"><i class="fa fa-info-circle"></i> 关于</a></li>
                <li><a href="${root}/user/finance"><i class="fa fa-gg-circle"></i> 财务中心</a></li>
            </ul>
            <#if u ??>
                <div class="user-bar-info pull-right">
                    <a href="${root}/user/${u.userId?string}">
                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        ${u.userName?string}
                    </a>
                     |
                    <a href="${root}/user/exit">
                        <i class="fa fa-sign-out" aria-hidden="true"></i> 注销
                    </a>
                </div>
            <#else>
                <div class="login-or-register pull-right">
                    <a href="${root}/login"><i class="fa fa-user-circle-o" aria-hidden="true"></i> 登陆</a>
                    <a href="${root}/register"><i class="fa fa-id-card-o" aria-hidden="true"></i> 注册</a>
                </div>
            </#if>
        </div>
    </div>
</nav>
    <#-- nested标签将替代最终渲染的主体内容 -->
    <#nested>
<script src="${root}/widget/jquery/jquery-1.11.3.min.js"></script>
<script src="${root}/widget/bootstrap/js/bootstrap.min.js"></script>
<script src="${root}/widget/iCheck/icheck.min.js"></script>
<script src="${root}/widget/layer/layer.js"></script>
    <@script_import />
    <#if script ??>
    <script type="text/javascript">
        <@script />
    </script>
    </#if>
<script src="${root}/js/common.js"></script>
</body>
</html>
</#macro>