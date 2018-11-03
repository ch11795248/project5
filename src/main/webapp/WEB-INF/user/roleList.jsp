<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>角色列表</title>
    <meta name="keywords" content="wanho模板"/>
    <meta name="description" content="优秀的页面开发模板"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="/js/jquery-3.0.0.js" type="text/javascript"></script>

    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
    <link href="/css/dataTables.bootstrap-1.10.13.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/demo.css" type="text/css">
    <link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">

    <%--<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>--%>
    <script type="text/javascript" src="/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="/js/jquery.ztree.excheck.js"></script>


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

                <li class="active">
                    <a href="/user/roleList">
                        <i class="icon-double-angle-right"></i>
                        <span class="menu-text"> 角色列表 </span>
                    </a>
                </li>
                <li>
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
                    <li>角色列表</li>
                </ul><!-- .breadcrumb -->
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="error-container">
                            <form action="/user/roleList" method="post" role="form" id="frm">
                                <div class="form-group">

                                    <input type="submit" value="搜索" class="btn btn-info btn-sm">
                                </div>
                                <input type="hidden" id="pageNum" name="pageNum">
                            </form>
                            <table class="table" border="1">
                                <tr>
                                    <td>ID</td>
                                    <td>角色</td>
                                    <td>描述</td>
                                    <td>操作</td>
                                </tr>
                                <c:forEach items="${pageInfo.list}" var="role">
                                    <tr>
                                        <td>${role.id}</td>
                                        <td>${role.role}</td>
                                        <td>${role.description}</td>
                                        <td>
                                            <button class="btn btn-warning btn-sm" onclick="showselectmodel(${role.id})">修改
                                            </button>
                                            <button class="btn btn-danger btn-sm" onclick="deleterRoleById(${role.id})">删除
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                        <div class="pagination-layout" style="margin-left: 400px;">
                            <div class="pagination">
                                <ul class="pagination">
                                </ul>
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
    <div class="modal-dialog" style="left:0;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>权限修改</h4>
            </div>
            <button class="btn btn-info permUpdate">权限修改</button>
            <button class="btn btn-default infoUpdate">角色信息修改</button>
            <div class="modal-body">
                <div class="content_wrap">
                    <div class="zTreeDemoBackground">
                        <ul id="treeDemo" class="ztree"></ul>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal" onclick="submittochange()">确认</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<div id="myModal2" class="modal">
    <div class="modal-dialog" style="left: 0;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4>角色信息修改</h4>
            </div>
            <button class="btn btn-default permUpdate">权限修改</button>
            <button class="btn btn-info infoUpdate">角色信息修改</button>
            <div class="modal-body">
                <form role="form" id="frmm" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">编号</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="id" readonly="readonly" id="idd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">角色名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="role" id="rolee">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">描述</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="description" id="descriptionn">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal" onclick="updateRoleInfo()" id="btn">确认
                </button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<script>
    /*点击确定修改按钮*/
    function submittochange() {
        /*角色id*/
        var roleId = $("#btn").val();
        console.info("角色id" + roleId);
       /*拿到勾选的复选框*/
        var treeObj=$.fn.zTree.getZTreeObj("treeDemo");
        var nodes=treeObj.getCheckedNodes(true);
        var str="";
        for(var i=0;i<nodes.length;i++){
            str+=nodes[i].id + ",";
            console.log("节点id:"+nodes[i].id+"节点名称"+nodes[i].name); //获取选中节点的值
        }
        /* 调用ajax将数据发送到后台 */
        $.ajax({
            type: 'post',
            url: '/user/updateRolePerms',
            async: 'false',
            data: {
                roleId: roleId,
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
        });
    }
    /*修改角色信息的方法*/
    function updateRoleInfo() {
        $.ajax({
            type: 'post',
            url: '/user/updateRoleInfo',
            data: $("#frmm").serialize(),
            success: function (result) {
                if (result.status == 200) {
                    alert(result.message);
                    location.href = '/user/roleList';
                }
                if (result.status == 400) {
                    alert(result.message);
                }
            },
            error: function () {
                alert("请求错误");
            }
        })
    }

    /*点击修改弹出模态框*/
    function showselectmodel(id) {
        /*给确定按钮赋上userId*/
         $("#btn").val(id);
         $(".checkedbox1").prop("checked", false);
        /*查询权限并做回填(zTree)*/
        $.ajax({
            type: 'post',
            url: '/user/getPermsByRoleId',
            async: 'false',
            data: {
                roleId: id,
            },
            success: function (result) {
                /*zTree*/
                console.info(result.data);
                var treeNodes = result.data;
                var setting = {
                    check: {
                        enable: true
                    },
                    data: {
                        key: {
                            name: "permName"
                        },
                        simpleData: {
                            enable: true,  //开启简单数据模式
                            idKey: "id",   //通过id属性指定节点标识
                            pIdKey: "parentId", //通过pId属性指定上节点ID
                            rootPId: 1,    //根节点ID 是0
                        }
                    }
                };

                /*初始化zTree树*/
                $.fn.zTree.init($("#treeDemo"), setting, treeNodes);
                /*定义一个zTree树*/
                var zTree = $.fn.zTree.getZTreeObj("treeDemo");
                /*设置关联关系：勾选时关联子，取消时关联子*/
                zTree.setting.check.chkboxType = {"Y": "s", "N": "s"};

                /*用户信息的回填*/
                console.info(result.data2);
                $("#idd").val(result.data2.id);
                $("#rolee").val(result.data2.role);
                $("#descriptionn").val(result.data2.description);
            },
            error: function () {
                alert("请求错误");
            }
        });
        $("#myModal").modal("show");
    }
    /*点击的tab切换*/
    $(function () {
        $(".permUpdate").click(function () {
            $("#myModal").modal("show");
            $("#myModal2").modal("hide");
        });
        $(".infoUpdate").click(function () {
            $("#myModal").modal("hide");
            $("#myModal2").modal("show");
        });
    });
    /*根据id删除角色*/
    function deleterRoleById(roleId) {
        $.ajax({
            type: 'post',
            url: '/user/deleteRole',
            data: {
                roleId: roleId
            },
            success: function (result) {
                if (result.status == 200) {
                    alert(result.message);
                    location.href = "/user/roleList";
                }
                if (result.status == 400) {
                    alert(result.message);
                }
            },
            error: function () {
                alert("请求错误");
            }
        })
    }
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
</script>
</body>
</html>
