<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <%@include file="../common/common.jsp" %>
    <link rel="stylesheet" href="${ctx}/css/edslider.css">
    <link rel="stylesheet" href="${ctx}/css/styles.css">
    <link rel="stylesheet" href="${ctx}/css/animate-custom.css">

</head>
<body>
<div class="container" id="index_bottom">
    <ul class="mySlideshow">
        <li class="first">
            <%--<a href="#" target="_blank" class="animated fadeInLeft">--%>
                <%--<img src="${ctx}/images/hd-logo.png" width="440" height="100" alt="Harley-Davidson">--%>
            <%--</a>--%>
            <%--<div class="animated fadeInRight">Vegetable demonstration</div>--%>
        </li>
        <li class="second">
            <img src="${ctx}/images/second-title.png" class="animated fadeInRight">
        </li>
        <li class="third">
            <img src="${ctx}/images/third-title.png" class="animated fadeInLeft">
        </li>
        <li class="fourth">
            <img src="${ctx}/images/fourth-title.png" class="animated fadeInRight">
        </li>
        <li class="fifth">
            <img src="${ctx}/images/fifth-title.png" class="animated fadeInLeft">
        </li>
    </ul>
</div>

<script src="${ctx}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery.edslider.js"></script>
<script>
    $(document).ready(function(){
        //Call plugin
        $('.mySlideshow').edslider({
            width : '100%',
            height: 500
        });

    });

</script>

</body>
</html>