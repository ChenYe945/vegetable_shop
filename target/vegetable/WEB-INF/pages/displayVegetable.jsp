<%--
  Created by IntelliJ IDEA.
  User: Kenton
  Date: 2017/3/16
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/common.jsp" %>
    <title>Title</title>
    <%@include file="../common/hasLogin.jsp" %>

</head>
<style>
    #page > table > tbody > tr > td > select {
        display: none;
    }
</style>
<body>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="${ctx}/css/displayVegetable.css">

<div class="display_contain">
    <ul id="display_ul">
    </ul>
</div>

<div class="turnPage">
    <div class="easyui-panel">
        <%--<div id="page" class="easyui-pagination" data-options="total:16,layout:['list','sep','first','prev','links','next','last','sep','refresh']">--%>

        <%--</div>--%>
        <div id="page" data-options="pageSize:16">

        </div>
    </div>
</div>

<%@include file="footer.jsp" %>

<script>
    var vegetablesMessage = sessionStorage.getItem('vegetables');

    if (vegetablesMessage == null) {
        $.ajax({
            url: '${ctx}/vegetable/findAllVegetable',
            type: 'GET',
            dataType: 'json',
            async: false,
            success: function (data) {
                vegetablesMessage = data;
            },
            error: function (error) {
                console.log(error)
            }
        })
    } else {
        vegetablesMessage = JSON.parse(vegetablesMessage);
    }

    for (var i = 0; i < vegetablesMessage.length; i++) {
        if (i < 16) {
            $("#display_ul").append('<li></li>');
        }
    }

    for (var i = 0; i < $("#display_ul li").length; i++) {
        var dis = $("#display_ul li")[i];
        var price = vegetablesMessage[i].vegetablePrice;
        var imgSrc = vegetablesMessage[i].vegetablePicture;
        var h3Text = vegetablesMessage[i].vegetableName
        var vegetableString = JSON.stringify(vegetablesMessage[i]);
        var liDiv1 = '<div class="display_div1" data-vegetable = '+vegetableString+'><a href="${ctx}/vegetableDetailMessage"><img src="${ctx}/images/' + imgSrc + '" alt=""></a><h3>'+h3Text+'</h3><p>单价：' + price + '元/斤</p></div>';
        var description = vegetablesMessage[i].vegetableDescribe;
        var liDiv2 = '<div  class="display_div2"><img src="${ctx}/images/' + imgSrc + '" alt=""><div class="display_div3">' + description + '</div></div>';
        $(dis).append(liDiv1);
        $(dis).append(liDiv2);
    }
    $('.display_div1').click(function () {
        sessionStorage.setItem('clickVegetable',$(this).attr('data-vegetable'));
    })

    setContainerHeight();

    /**
     * 设置容器高度
     */
    function setContainerHeight() {
        if (vegetablesMessage.length < 16) {
            $(".display_contain").height((vegetablesMessage.length / 4) * 350);
        } else {
            $(".display_contain").height(1450);
        }
    }
    /**
     * 翻页效果
     */
    pageChange();
    function pageChange() {
        $("#page").pagination({
            total: vegetablesMessage.length,
            pageList: [16, 32, 64, 128],
            onSelectPage: function (pageNumber, pageSize) {
                $("#display_ul").html("");
                for (var i = 16 * (pageNumber - 1); i < vegetablesMessage.length; i++) {
                    if (i < 16 * pageNumber) {
                        $("#display_ul").append('<li></li>');
                    }
                }
                for (var i = 0; i < $("#display_ul li").length; i++) {
                    var dis = $("#display_ul li")[i];
                    var k = 16 * (pageNumber - 1) + i;
                    var price = vegetablesMessage[k].vegetablePrice;
                    var imgSrc = vegetablesMessage[k].vegetablePicture;
                    var h3Text = vegetablesMessage[k].vegetableName;
                    var liDiv1 = '<div class="display_div1"><img src="${ctx}/images/' + imgSrc + '" alt=""><h3>'+h3Text+'</h3><p>单价：' + price + '元/斤</p></div>';
                    var description = vegetablesMessage[k].vegetableDescribe;
                    var liDiv2 = '<div  class="display_div2"><img src="${ctx}/images/' + imgSrc + '" alt=""><div class="display_div3">' + description + '</div></div>';
                    $(dis).append(liDiv1);
                    $(dis).append(liDiv2);
                }
                var nowLen = vegetablesMessage.length - (16*(pageNumber-1))
                if (nowLen < 16) {
                    $(".display_contain").height(nowLen/4 * 304);
                } else {
                    $(".display_contain").height(1450);
                }
            }
        })
    }


</script>
</body>


</html>
