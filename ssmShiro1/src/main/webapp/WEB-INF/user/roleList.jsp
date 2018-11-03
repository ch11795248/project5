<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/13
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色列表</title>
    <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <table class="table">
        <tr>
            <td>ID</td>
            <td>角色</td>
            <td>操作</td>
        </tr>
        <tr>
            <td>1</td>
            <td>管理员角色</td>
            <td>
                <button class="btn btn-warning" data-toggle="modal" data-target="#myModal">修改</button>
                <button class="btn btn-danger">删除
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>普通用户角色</td>
            <td>
                <button class="btn btn-warning" data-toggle="modal" data-target="#myModal">修改</button>
                <button class="btn btn-danger">删除</button>
            </td>
        </tr>
    </table>
</div>
<div id="myModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>权限修改</h4>
            </div>
            <div class="modal-body">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked="checked">用户系统管理
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked="checked">——运维人员系统管理
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked="checked">————新增运维人员
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">————修改运维人员
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">————查看运维人员
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">————删除运维人员
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">——开发人员系统管理
                    </label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">确认</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
