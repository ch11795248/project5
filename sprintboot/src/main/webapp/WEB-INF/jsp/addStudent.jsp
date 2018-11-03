<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/10
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jqPaginator.js"></script>
</head>
<body>
    <div class="col-lg-2">
        <form action="/student/add" method="post">
            姓名<input type="text" name="name" class="form-control">
            年龄<input type="text" name="age" class="form-control">
            <input type="submit" value="提交" class="btn btn-success">
        </form>
    </div>
</body>
</html>
