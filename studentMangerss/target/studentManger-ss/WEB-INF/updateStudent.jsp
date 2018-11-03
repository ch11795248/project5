<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/10/3
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
</head>
<body>
    <form id="frm">
        <input type="id" name="id" value="${id}" readonly="readonly">
        <input type="text" name="name">
        <input type="text" name="age">
        <input type="button" value="提交">
    </form>
    <script>
        $(function () {
            $("input[type='button']").click(function () {
                $.ajax({
                    type:'post',
                    data:$('#frm').serialize(),
                    url:'/student/update',
                    success:function (result) {
                        if(result.status==200){
                            alert(result.message);
                            location.href="/student";
                        }
                    },
                    error:function () {
                        alert("请求失败");
                    }
                })
            })
        })
    </script>
</body>
</html>
