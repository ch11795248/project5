<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/9/21
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>查询所有学生</title>
</head>
<body>
    <table>
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
                <td><a href="/addStudent.jsp">新增</a></td>
                <td><a href="/StudentServlet?method=updateDetailById&id=${student.id}">修改</a></td>
                <td><a href="/StudentServlet?method=deleteStudent&id=${student.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
