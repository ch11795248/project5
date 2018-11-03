<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/9/28
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
    <script type="text/javascript"  src="/js/bootstrap.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h3>登录</h3>
    <form id="frm" style="width: 200px;">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="name" placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="pass" placeholder="请输入用户名">
        </div>
        <%--用户名：<input type="text" name="name" value="zhangsan"><br/>--%>
        <%--密码：<input type="text" name="pass" value="123"><br/>--%>
        <button class="btn btn-success">提交</button>
        <button class="btn btn-danger">返回</button>
    </form>
    <script>
        $(function () {
            $(".btn-success").click(function () {
                $.ajax({
                    type:'post',
                    data:$("#frm").serialize(),
                    url:'/login/submit',
                    async:false,
                    success:function (data) {
                        if(data.status==200){
                            alert(data.message);
                            location.href="/login/success";
                        }
                        if(data.status==400){
                            alert(data.message);
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
