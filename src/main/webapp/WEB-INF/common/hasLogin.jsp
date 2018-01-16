<%--
  Created by IntelliJ IDEA.
  User: Kenton
  Date: 2017/3/18
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        var session = window.sessionStorage;
        if (session.length == 0) {
            window.location.href = '${ctx}/login';
        }
    </script>
</head>
<body>

</body>
</html>
