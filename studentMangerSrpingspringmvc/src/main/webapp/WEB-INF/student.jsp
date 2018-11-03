<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/9/29
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>学生</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <table border="1" class="table">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.age}</td>
                <td>
                    <a href="/student/jumpToAdd" class="btn btn-success">增加</a>
                    <a href="#" class="btn btn-info">修改</a>
                    <a href="#" class="btn btn-danger">删除</a>
                </td>
            </tr>
        </c:forEach>
</table>

</body>
</html>
