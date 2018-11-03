<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/13
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<html>
<head>
    <title>用户列表</title>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
    <link href="/css/dataTables.bootstrap-1.10.13.css" rel="stylesheet">

    <script src="/js/jquery-3.0.0.js" type="text/javascript"></script>
    <script src="/js/jquery.dataTables-1.10.13.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/jqPaginator.js" type="text/javascript"></script>
    <script src="/js/dataTables.bootstrap-1.10.13.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <form action="/user/userList" method="post" role="form" id="frm">
        <div class="form-group">
            <label for="userAccount">账号</label>
            <input type="text" name="userAccount" id="userAccount" value="${userAccount}">
            <label for="userName">姓名</label>
            <input type="text" name="userName" id="userName" value="${userName}">
            <input type="submit" value="搜索" class="btn btn-info btn-sm">
        </div>
        <input type="hidden" id="pageNum" name="pageNum">
    </form>
    <table class="table" border="1">
        <tr>
            <td>ID</td>
            <td>账号</td>
            <td>姓名</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.userAccount}</td>
                <td>${user.userName}</td>
                <td>
                    <c:choose>
                        <c:when test="${user.status eq 1}">正常</c:when>
                        <c:otherwise>被禁用</c:otherwise>
                    </c:choose></td>
                </td>
                <td>
                    <button class="btn btn-warning btn-sm" onclick="showselectmodel('${user.userAccount}',${user.id})">修改</button>
                    <shiro:hasPermission name="user:delete">
                        <c:choose>
                            <c:when test="${user.status eq 0}">
                                <button type="button" id="recevorbtn" name="recevorbtn"
                                        class="btn btn-info btn-sm"
                                        onclick="updateUserStatus(${user.id},1)">恢复正常</button>
                            </c:when>
                            <c:when test="${user.status eq 1}">
                                <button type="button" id="forbidbtn" name="forbidbtn"
                                        class="btn btn-danger btn-sm"
                                        onclick="updateUserStatus(${user.id},0)">禁用账户</button>
                            </c:when>
                        </c:choose>
                    </shiro:hasPermission>
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
<div id="myModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>角色修改</h4>
            </div>
            <div class="modal-body">
                <table id="example" class="table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>角色编号</th>
                            <th>角色名称</th>
                            <th>角色描述</th>
                            <th>角色状态</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${roles}" var="role">
                        <tr>
                            <td><input type="checkbox" name="checkedemployee"
                                       class="checkedbox1" value="${role.id}" style="opacity: 1;" /></td>
                            <td>${role.id}</td>
                            <td>${role.role}</td>
                            <td>${role.description}</td>
                            <td>${role.status}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="submittochange()" id="btn">确认</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
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
            page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

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

    function updateUserStatus(userId, status) {
        pageNum = ${pageInfo.pageNum};
        console.info(pageNum);
        location.href = '/user/updateStatus?id='
            + userId + '&status=' + status+'&pageNum='+pageNum;
    }

    /* 点击修改按钮 */
    function showselectmodel(userAccount,userId) {
        /*给确定按钮赋上userId*/
        $("#btn").val(userId);
        $(".checkedbox1").prop("checked",false);
        var userAccountVal = userAccount
        $.ajax({
            type:'post',
            url:'/user/getUserRoles',
            async:'false',
            data:{
                userAccount:userAccountVal,
            },
            success:function(result){
                $.each(result.data,function(i,item){
                    $(".checkedbox1[value="+item.id+"]").prop("checked",true);
                });
            },
            error:function(){
                alert("请求错误");
            }
        });
        $("#example").dataTable().fnDestroy();
        $.extend($.fn.dataTable.defaults, {
            "searching" : false,
            "ordering" : false
        });
        $('#example').DataTable({
            language : {
                "sProcessing" : "处理中...",
                "sLengthMenu" : "显示 _MENU_ 项结果",
                "sZeroRecords" : "没有匹配结果",
                "sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix" : "",
                "sSearch" : "搜索:",
                "sUrl" : "",
                "sEmptyTable" : "表中数据为空",
                "sLoadingRecords" : "载入中...",
                "sInfoThousands" : ",",
                "oPaginate" : {
                    "sFirst" : "首页",
                    "sPrevious" : "上页",
                    "sNext" : "下页",
                    "sLast" : "末页"
                }
            }
        });
        $("#myModal").modal("show");
    }

    /* 点击确认修改按钮 */
    function submittochange() {
        var userId=$("#btn").val();
        console.info("用户id"+userId);
        var str = "";
        $.each($(".checkedbox1:checked"),function(i,item){
            str += ","+$(item).val();
        });
        str = str.substring(1);
        /* 调用ajax将数据发送到后台 */
        $.ajax({
            type:'post',
            url:'/user/updateUserRoles',
            async:'false',
            data:{
                userId:userId,
                str:str
            },
            success:function(result){
                if(result.status==200){
                    alert(result.message);
                    $("#myModal").modal("hide");
                }
                if(result.status==400){
                    alert(result.message);
                    $("#myModal").modal("hide");
                }
            },
            error:function(){
                alert("请求错误");
            }
        })
    }

</script>
</body>
</html>
