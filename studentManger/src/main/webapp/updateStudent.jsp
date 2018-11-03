<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/9/21
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>修改学生</title>
</head>
<body>
    <form action="/StudentServlet?method=updateStudent&id=${id}" method="post">
        <input type="text" value="${student.name}" id="name" name="name"/>
        <input type="text" value="${student.age}" id="age" name="age"/>
        <input type="submit" value="提交">
    </form>
</body>
</html>
