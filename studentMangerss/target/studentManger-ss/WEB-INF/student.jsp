<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/10/2
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>学生页面</title>
    <script src="/js/jquery-3.0.0.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <table class="table">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>操作</th>
        </tr>
        <tbody>

        </tbody>
    </table>
    <script>
        $(function () {
            $.ajax({
                type:'post',
                url:'/student/show',
                async:false,
                success:function (data) {
                    $.each(data,function (i,item) {
                        $td1 = $("<td></td>").text(item.id);
                        $td2 = $("<td></td>").text(item.name);
                        $td3 = $("<td></td>").text(item.age);
                        $td4 = $("<td></td>").html("<a class='btn btn-success' href='/student/goToAdd'>增加</a>");
                        $a2 = $("<a class='btn btn-danger'>修改</a>").attr("href","/student/goToUpdate?id="+item.id);
                        $a1 = $("<a class='btn btn-info'>删除</a>").attr("href","/student/delete?id="+item.id);
                        $a2.appendTo($td4);
                        $a1.appendTo($td4);
                        $tr = $("<tr></tr>").append($td1).append($td2).append($td3).append($td4);
                        $tr.appendTo($("tbody"));
                    });
                },
                error:function () {
                    alert("请求错误");
                }
            });
            $("input[class='btn-info']").click(function () {
                if(confirm("是否确认删除？")){
                    alert("true");
                }else {
                    alert("false");
                }
            })
        })
    </script>
</body>
</html>
