<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/9/21
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生</title>
</head>
<body>
    <form action="StudentServlet?method=addStudent" method="post">
        <input type="text" id="name" name="name" value="张三">
        <input type="text" id="age" name="age" value="20">
        <input type="submit" value="提交">
    </form>
</body>
</html>
