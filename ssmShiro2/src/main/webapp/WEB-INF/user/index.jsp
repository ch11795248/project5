<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>权限管理系统主界面</title>
	<meta name="keywords" content="wanho模板" />
	<meta name="description" content="优秀的页面开发模板" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
				<li class="active">
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
				</ul><!-- .breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<div class="error-container">
							<div>
								<a href="/user/security" class="btn btn-success">权限展示</a>
								<a href="/user/roleList" class="btn btn-danger">角色列表</a>
								<a href="/user/userList" class="btn btn-info">用户列表</a>
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
</body>
</html>
