<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>登录页面</title>
    <meta name="keywords" content="wanho模板" />
    <meta name="description" content="优秀的页面开发模板" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- basic styles -->

    <link href="${pageContext.request.contextPath}/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome.min.css" />

    <!--[if IE 7]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/font-awesome-ie7.min.css" />
    <!--[endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

    <!-- ace styles -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 8]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ace/assets/css/ace-ie.min.css" />
    <!--[endif]-->

    <!-- inline styles related to this page -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]-->
    <script src="${pageContext.request.contextPath}/ace/assets/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/ace/assets/js/respond.min.js"></script>
    <!--[endif]-->
</head>

<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="icon-leaf green"></i>
                            <span class="red">权限</span>
                            <span class="white">管理系统</span>
                        </h1>
                        <h4 class="blue">&copy; Wanho</h4>
                    </div>
                    <div class="space-6"></div>
                    <div class="position-relative">
                        <div id="signup-box" class="signup-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="icon-group blue"></i>
                                        注册页面
                                    </h4>
                                    <div class="space-6"></div>
                                    <p>请输入您的详细信息: </p>
                                    <form id="frm">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="账号" name="userAccount"/>
															<i class="icon-envelope"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="姓名" name="userName"/>
															<i class="icon-user"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="password"/>
															<i class="icon-lock"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="再次输入密码" name="rePassword"/>
															<i class="icon-retweet"></i>
														</span>
                                            </label>
                                            <div class="space-24"></div>
                                            <div class="clearfix">
                                                <button type="reset" class="width-30 pull-left btn btn-sm">
                                                    <i class="icon-refresh"></i>
                                                    重置
                                                </button>
                                                <input type="button" class="width-65 pull-right btn btn-sm btn-success" id="register" value="注册"/>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="toolbar center">
                                    <a href="/login/toLogin" class="back-to-login-link">
                                    <i class="icon-arrow-left"></i>
                                    返回登录页面
                                    </a>
                                </div>
                            </div><!-- /widget-body -->
                        </div><!-- /signup-box -->
                    </div><!-- /position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->

<script src="${pageContext.request.contextPath}/ace/assets/js/jquery-2.0.3.min.js"></script>

<!-- <![endif]-->

<!--[if IE]-->
<script src="${pageContext.request.contextPath}/ace/assets/js/jquery-1.10.2.min.js"></script>
<!--[endif]-->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/ace/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]-->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/ace/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<!--[endif]-->

<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script>
    $(function () {
        /*提交注册的方法*/
        $("#register").click(function () {
            /*非空判断*/
            if("" == $("input[name='userAccount']").val()){
                alert("账号不能为空");
                return false;
            }
            if("" == $("input[name='userName']").val()){
                alert("用户名不能为空");
                return false;
            }
            if("" == $("input[name='password']").val()){
                alert("密码不能为空");
                return false;
            }
            if("" == $("input[name='rePassword']").val()){
                alert("重复密码不能为空");
                return false;
            }
            if(!($("input[name='password']").val() == $("input[name='rePassword']").val())){
                alert("两次密码不一致");
                return false;
            }
            $.ajax({
                type:'post',
                url:'/login/register',
                data:$("#frm").serialize(),
                success:function (result) {
                    if(result.status==200){
                        alert(result.message);
                        location.href='/login/toLogin';
                    }
                    if(result.status==500 || result.status==488){
                        alert(result.message);
                        return false;
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
