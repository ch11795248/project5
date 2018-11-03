<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>权限展示</title>
    <meta name="keywords" content="wanho模板" />
    <meta name="description" content="优秀的页面开发模板" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="/js/jquery.tmpl.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
    <!-- basic styles -->
    <link href="${pageContext.request.contextPath}/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <!-- page specific plugin styles -->
    <!-- fonts -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-skins.min.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-ie.min.css" />
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
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
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
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/ace/assets/avatars/user.jpg" alt="Jason's Photo" />
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
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>
        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
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
                <li class="active">
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
                <li>
                    <a href="/user/userList">
                        <i class="icon-text-width"></i>
                        <span class="menu-text"> 用户列表 </span>
                    </a>
                </li>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="/user">主页</a>
                    </li>
                    <li>权限展示</a>
                    </li>
                </ul><!-- .breadcrumb -->
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="error-container">
                            <div style="height: 500px;">
                                <div class="col-lg-4">
                                    <div class="text-center"><kbd>一级权限</kbd></div>
                                    <c:forEach items="${allOnePerms}" var="onePerms">
                                        <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)"
                                           onclick="showMsg(this,${onePerms.id})">
                                                ${onePerms.permName}
                                            <div style="float: right;" hidden="hidden">
                                                <button type="button" class="btn btn-warning btn-xs" onclick="updatePerm(${onePerms.id})">
                                                    <span class="glyphicon glyphicon-pencil"></span> 修改
                                                </button>
                                                <button type="button" class="btn btn-danger btn-xs" onclick="deletePermById(${onePerms.id})">
                                                    <span class="glyphicon glyphicon-remove"></span> 删除
                                                </button>
                                            </div>
                                        </a>
                                    </c:forEach>
                                </div>
                                <div class="col-lg-4 col-lg-push-0">
                                    <div class="text-center"><kbd>二级权限</kbd></div>
                                    <div id="div2"></div>
                                </div>
                                <div class="col-lg-4 col-lg-push-0">
                                    <div class="text-center"><kbd>三级级权限</kbd></div>
                                    <div id="div3"></div>
                                </div>
                            </div>
                        </div><!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div><!-- /.main-content -->
        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>
            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-skin="default" value="#438EB9">#438EB9</option>
                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; Choose Skin</span>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                    <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                    <label class="lbl" for="ace-settings-add-container">
                        Inside
                        <b>.container</b>
                    </label>
                </div>
            </div>
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
                <h4>权限信息修改</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" id="frm">
                    <div class="form-group">
                        <label class="control-label col-sm-2">编号</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="id" readonly="readonly">
                        </div>
                    </div>
                    <input type="hidden" class="form-control" name="parentId">
                    <div class="form-group">
                        <label class="control-label col-sm-2">父级权限</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="parentName" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">权限名称</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="permName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">权限</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="permission"">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal" id="btn">确认</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<script type="application/javascript">
    /*点击确认修改按钮*/
    $("#btn").click(function () {
        $.ajax({
            type: 'post',
            url: '/user/updatePerm',
            async:false,
            data:$("#frm").serialize(),
            success: function (result) {
                if(result.status == 200){
                    alert(result.message);
                    location.href = "/user/security";
                }
                if(result.status == 400){
                    alert(result.message);
                }
            },
            erroe:function () {
                alert("请求错误");
            }
        });
    })
    /*权限修改*/
    function updatePerm(id) {
        $.ajax({
            type: 'post',
            url: '/user/getPermDtoById',
            async:false,
            data: {
                permId: id
            },
            success: function (result) {
                console.info(result);
                $("input[name='id']").val(result.data.id);
                $("input[name='parentId']").val(result.data.parentId);
                $("input[name='parentName']").val(result.data.parentName);
                $("input[name='permName']").val(result.data.permName);
                $("input[name='permission']").val(result.data.permission);
            },
            erroe:function () {
                alert("请求错误");
            }
        })
        $("#myModal").modal("show");
    }
    /*权限删除*/
    function deletePermById(id) {
        if(confirm("是否确认删除？")){
            $.ajax({
                type: 'post',
                url: '/user/deletePermById',
                async:false,
                data: {
                    permId: id
                },
                success: function (result) {
                    if(result.status == 200){
                        alert(result.message);
                        location.href = "/user/security";
                    }
                    if(result.status == 400){
                        alert(result.message);
                    }
                },
                erroe:function () {
                    alert("请求错误");
                }
            })
        }
    }
    function showbtn(obj) {
        $(obj).find("div").removeAttr("hidden")
    }

    function hidebtn(obj) {
        $(obj).find("div").attr("hidden", "hidden")
    }
    function showMsg(obj, id) {
        $(obj).parent().find("a").removeClass("active");
        $(obj).addClass("active");
        /*首先清空div2的内容*/
        $("#div2").empty();
        $("#div3").empty();
        /*发送ajax查询二级权限*/
        $.ajax({
            type: 'post',
            url: '/user/getPermsById',
            data: {
                parentId: id
            },
            success: function (result) {
                console.info(result.data);
                $.each(result.data,function (i,item) {
                    $a = $("<a></a>").text(item.permName).attr("class","list-group-item text-center").
                    attr("onmouseover","showbtn(this)").attr("onmouseout","hidebtn(this)").attr("onclick","showMsg2(this,"+item.id+")");
                    $div = $("<div></div>").attr("style","float: right;").attr("hidden","hidden").appendTo($a);
                    $span1 = $("<span></span>").attr("class","glyphicon glyphicon-pencil").text("修改");
                    $button1 =$("<button></button>").attr("type","button").attr("class","btn btn-warning btn-xs").attr("onclick","updatePerm("+item.id+")");
                    $span1.appendTo($button1);
                    $span2 = $("<span></span>").attr("class","glyphicon glyphicon-remove").text("删除");
                    $button2 =$("<button></button>").attr("type","button").attr("class","btn btn-danger btn-xs").attr("onclick","deletePermById("+item.id+")");
                    $span2.appendTo($button2);
                    $button1.appendTo($div);
                    $button2.appendTo($div);
                    $a.appendTo($("#div2"));
                })
            },
            error: function () {
                alert("请求错误");
            }
        })
    }
    function showMsg2(obj, id) {
        $(obj).parent().find("a").removeClass("active");
        $(obj).addClass("active");
        /*首先清空div3的内容*/
        $("#div3").empty();
        /*发送ajax查询三级权限*/
        $.ajax({
            type: 'post',
            url: '/user/getPermsById',
            data: {
                parentId: id
            },
            success: function (result) {
                console.info(result.data);
                $.each(result.data,function (i,item) {
                    $a = $("<a></a>").text(item.permName).attr("class","list-group-item text-center").
                    attr("onmouseover","showbtn(this)").attr("onmouseout","hidebtn(this)");
                    $div = $("<div></div>").attr("style","float: right;").attr("hidden","hidden").appendTo($a);
                    $span1 = $("<span></span>").attr("class","glyphicon glyphicon-pencil").text("修改");
                    $button1 =$("<button></button>").attr("type","button").attr("class","btn btn-warning btn-xs").attr("onclick","updatePerm("+item.id+")");;
                    $span1.appendTo($button1);
                    $span2 = $("<span></span>").attr("class","glyphicon glyphicon-remove").text("删除").attr("onclick","deletePermById("+item.id+")");;
                    $button2 =$("<button></button>").attr("type","button").attr("class","btn btn-danger btn-xs");
                    $span2.appendTo($button2);
                    $button1.appendTo($div);
                    $button2.appendTo($div);
                    $a.appendTo($("#div3"));
                })
            },
            error: function () {
                alert("请求错误");
            }
        })
    }
</script>
</body>
</html>
