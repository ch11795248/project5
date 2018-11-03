<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jqPaginator.js"></script>
</head>
<body>
<h3>学生管理系统</h3>
<form id="frm" action="/student" method="post">
    姓名：<input type="text" name="name" id="name" value="${name}">
    <input type="submit" value="搜索" class="btn btn-success">
    <input type="hidden" id="pageNum" name="pageNum">
</form>
<table class="table" border="1">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${pageInfo.list}" var="stu">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.age}</td>
            <td>
                <a class="btn btn-success" href="/student/goToAdd">增加</a>
                <a class="btn btn-info" href="/student/goUpdate?id=${stu.id}">修改</a>
                <a class="btn btn-danger" href="/student/delete?id=${stu.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div class="pagination-layout" style="margin-left: 200px;">
    <div class="pagination">
        <ul class="pagination">
        </ul>
    </div>
</div>
</div>
<script type="text/javascript">
    window.onload=function(){
        var if_fistime=true;
        $(".pagination").jqPaginator({
            totalPages:${pageInfo.pages},
            visiblePages:3,
            currentPage:${pageInfo.pageNum},
            first: '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
            prev: '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
            next: '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
            last: '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
            page: '<li class="Page"><a href="javascript:void(0);">{{page}}</a></li>',

            onPageChange:function(num){
                /* 	alert(num)  */
                /* 防止进入死循环 */
                if(if_fistime){
                    if_fistime=false;
                }else if(!if_fistime){
                    changePage(num);
                }
            }
        })
    }

    function changePage(num){
        $("#pageNum").val(num);
        $("#frm").submit();
    }
</script>
</body>
</html>
