<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/13
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户主界面</title>
    <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div style="width:300px;margin: 100px auto;">
            <a href="/user/security" class="btn btn-success">权限展示</a>
            <a href="/user/userList" class="btn btn-info">用户列表</a>
            <a href="/user/roleList" class="btn btn-danger">角色列表</a>
        </div>
    </div>
</body>
</html>
