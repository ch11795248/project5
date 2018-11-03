<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/26
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
</head>
<body>
<form id="frm">
    <input type="hidden" id="id" name="id" value="${student.id}">
    <input type="text" id="name" name="name" value="${student.name}">
    <input type="text" id="age" name="age" value="${student.age}">
    <input type="button" id="submit" value="提交">
</form>
<script>
    $(function () {
        $("#submit").click(function () {
            $.ajax({
                type:'post',
                url:'/student/add',
                data:$("#frm").serialize(),
                
                success:function (data) {
                    if(data.status==200){
                        alert("增加成功");
                        location.href="/student";
                    }
                },
                error:function () {
                    alert("请求错误");
                }
            })
        })
    })
</script>
</body>
</html>
