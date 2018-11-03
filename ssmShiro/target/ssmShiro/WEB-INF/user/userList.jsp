<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>用户列表</title>
    <meta name="keywords" content="wanho模板"/>
    <meta name="description" content="优秀的页面开发模板"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
    <link href="/css/dataTables.bootstrap-1.10.13.css" rel="stylesheet">

    <script src="/js/jquery-3.0.0.js" type="text/javascript"></script>
    <script src="/js/jquery.dataTables-1.10.13.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/jqPaginator.js" type="text/javascript"></script>
    <script src="/js/dataTables.bootstrap-1.10.13.js" type="text/javascript"></script>
    <!-- basic styles -->

    <link href="${pageContext.request.contextPath}/ace/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-skins.min.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="${pageContext.request.contextPath}/ace/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/ace/assets/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/ace/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    wanho admin
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/ace/assets/avatars/user.jpg"
                             alt="Jason's Photo"/>
                        <span class="user-info">
							<small>欢迎您,</small>
						</span>
                        <i class="icon-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="icon-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.ace-nav -->
        </div><!-- /.navbar-header -->
    </div><!-- /.container -->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
            </script>

            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success">
                        <i class="icon-signal"></i>
                    </button>

                    <button class="btn btn-info">
                        <i class="icon-pencil"></i>
                    </button>

                    <button class="btn btn-warning">
                        <i class="icon-group"></i>
                    </button>

                    <button class="btn btn-danger">
                        <i class="icon-cogs"></i>
                    </button>
                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">
                <li>
                    <a href="/user">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text"> 主页 </span>
                    </a>
                </li>
                <li>
                    <a href="/user/security">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> 权限展示 </span>
                    </a>
                </li>

                <li>
                    <a href="/user/roleList">
                        <i class="icon-double-angle-right"></i>
                        <span class="menu-text"> 角色列表 </span>
                    </a>
                </li>
                <li class="active">
                    <a href="/user/userList">
                        <i class="icon-text-width"></i>
                        <span class="menu-text"> 用户列表 </span>
                    </a>
                </li>

            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="/user">主页</a>
                    </li>
                    <li>用户列表</li>
                </ul><!-- .breadcrumb -->
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="error-container">
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
                                            </c:choose>
                                        </td>
                                        <td>
                                            <button class="btn btn-warning btn-sm" onclick="showselectmodel('${user.userAccount}',${user.id})">
                                                修改
                                            </button>
                                            <shiro:hasPermission name="user:delete">
                                                <c:choose>
                                                    <c:when test="${user.status eq 0}">
                                                        <button type="button" id="recevorbtn" name="recevorbtn"
                                                                class="btn btn-info btn-sm"
                                                                onclick="updateUserStatus(${user.id},1)">恢复正常
                                                        </button>
                                                    </c:when>
                                                    <c:when test="${user.status eq 1}">
                                                        <button type="button" id="forbidbtn" name="forbidbtn"
                                                                class="btn btn-danger btn-sm"
                                                                onclick="updateUserStatus(${user.id},0)">禁用账户
                                                        </button>
                                                    </c:when>
                                                </c:choose>
                                            </shiro:hasPermission>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <div class="pagination-layout" style="margin-left: 400px;">
                                <div class="pagination">
                                    <ul class="pagination">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->
</div><!-- /#ace-settings-container -->
</div><!-- /.main-container-inner -->

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="icon-double-angle-up icon-only bigger-110"></i>
</a>

</div><!-- /.main-container -->
<div id="myModal" class="modal">
    <div class="modal-dialog" style="left: 0;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>角色修改</h4>
            </div>
            <button class="btn btn-info roleUpdate">角色修改</button>
            <button class="btn btn-default infoUpdate">用户信息修改</button>
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
                                       class="checkedbox1" value="${role.id}" style="opacity: 1;"/></td>
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
                <button type="button" class="btn btn-info" data-dismiss="modal" onclick="submittochange()" id="btn">确认
                </button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<div id="myModal2" class="modal">
    <div class="modal-dialog" style="left: 0;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>用户信息修改</h4>
            </div>
            <button class="btn btn-default roleUpdate">角色修改</button>
            <button class="btn btn-info infoUpdate">用户信息修改</button>
            <div class="modal-body">
                <form role="form" id="frmm" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">编号</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="id" readonly="readonly" id="id1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">用户账号</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="userAccount" id="userAccount1" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">用户姓名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="userName" id="userName1">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal" onclick="updateUserName()">确认修改</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    /*修改用户姓名*/
    function updateUserName() {
        $.ajax({
            type: 'post',
            url: '/user/updateInfo',
            data: $("#frmm").serialize(),
            success: function (result) {
                alert(result.message);
                location.href = '/user/userList';
            },
            error: function () {
                alert("请求失败");
            }
        })
    }

    /*给tab按钮绑定切换事件*/
    $(function () {
        $(".roleUpdate").click(function () {
            $("#myModal").modal("show");
            $("#myModal2").modal("hide");
        });
        $(".infoUpdate").click(function () {
            $("#myModal").modal("hide");
            $("#myModal2").modal("show");
        });
    })

    /*分页*/
    window.onload = function () {
        var if_fistime = true;
        $(".pagination").jqPaginator({
            totalPages:${pageInfo.pages},
            visiblePages: 3,
            currentPage:${pageInfo.pageNum},
            first: '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
            prev: '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
            next: '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
            last: '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
            page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

            onPageChange: function (num) {
                /* 	alert(num)  */
                /* 防止进入死循环 */
                if (if_fistime) {
                    if_fistime = false;
                } else if (!if_fistime) {
                    changePage(num);
                }
            }
        })
    }

    function changePage(num) {
        $("#pageNum").val(num);
        $("#frm").submit();
    }

    function updateUserStatus(userId, status) {
        pageNum = ${pageInfo.pageNum};
        console.info(pageNum);
        location.href = '/user/updateStatus?id='
            + userId + '&status=' + status + '&pageNum=' + pageNum;
    }

    /* 点击修改按钮 */
    function showselectmodel(userAccount, userId) {
        /*给确定按钮赋上userId*/
        $("#btn").val(userId);
        $(".checkedbox1").prop("checked", false);
        var userAccountVal = userAccount
        $.ajax({
            type: 'post',
            url: '/user/getUserRoles',
            async: 'false',
            data: {
                userAccount: userAccountVal,
            },
            success: function (result) {
                /*用户角色的回填*/
                $.each(result.data, function (i, item) {
                    $(".checkedbox1[value=" + item.id + "]").prop("checked", true);
                });
                /*用户信息的回填*/
                console.info(result.data2);
                $("#id1").val(result.data2.id);
                $("#userAccount1").val(result.data2.userAccount);
                $("#userName1").val(result.data2.userName);
            },
            error: function () {
                alert("请求错误");
            }
        });
        $("#example").dataTable().fnDestroy();
        $.extend($.fn.dataTable.defaults, {
            "searching": false,
            "ordering": false
        });
        $('#example').DataTable({
            "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "所有"]],//设置每页显示数据条数的下拉选项
            'iDisplayLength': 5, //每页初始显示5条记录
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                }
            }
        });
        $("#myModal").modal("show");
    }

    /* 点击确认修改按钮 */
    function submittochange() {
        var userId = $("#btn").val();
        console.info("用户id" + userId);
        var str = "";
        $.each($(".checkedbox1:checked"), function (i, item) {
            str += "," + $(item).val();
        });
        str = str.substring(1);
        /* 调用ajax将数据发送到后台 */
        $.ajax({
            type: 'post',
            url: '/user/updateUserRoles',
            async: 'false',
            data: {
                userId: userId,
                str: str
            },
            success: function (result) {
                if (result.status == 200) {
                    alert(result.message);
                    $("#myModal").modal("hide");
                }
                if (result.status == 400) {
                    alert(result.message);
                    $("#myModal").modal("hide");
                }
            },
            error: function () {
                alert("请求错误");
            }
        })
    }

</script>
</body>
</html>
