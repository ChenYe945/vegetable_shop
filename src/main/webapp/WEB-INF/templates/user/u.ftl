<#include "../include/_layout.ftl">
<@layout>
<div class="container">
    <ol class="breadcrumb">
        <li><i class="fa fa-home" aria-hidden="true"></i> <a href="${root}/index">首页</a></li>
        <li class="active">用户中心</li>
    </ol>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <table class="table table-bordered table-striped table-responsive">
                <thead>
                <tr>
                    <th colspan="2" class="text-center">基本资料</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>用户名：</td>
                    <td>${u.loginName?string}</td>
                </tr>
                <tr>
                    <td>昵称：</td>
                    <td>${u.userName?string}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>${(u.gender=="boy")?string("男生","女生")}</td>
                </tr>
                <tr>
                    <td>状态：</td>
                    <td>${u.status?string}</td>
                </tr>
                <tr>
                    <td>注册时间</td>
                    <td>${u.createTime?datetime}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</@layout>