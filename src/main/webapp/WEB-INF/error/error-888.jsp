<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>404错误页面 wanho</title>
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
								<i class="icon-cog"></i>
								设置
							</a>
						</li>
						<li>
							<a href="#">
								<i class="icon-user"></i>
								个人简介
							</a>
						</li>

						<li class="divider"></li>

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
					<a href="${pageContext.request.contextPath}/ace/index.jsp">
						<i class="icon-dashboard"></i>
						<span class="menu-text"> 控制台 </span>
					</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/ace/typography.jsp">
						<i class="icon-text-width"></i>
						<span class="menu-text"> 文字排版 </span>
					</a>
				</li>

				<li>
					<a href="#" class="dropdown-toggle">
						<i class="icon-desktop"></i>
						<span class="menu-text"> UI 组件 </span>

						<b class="arrow icon-angle-down"></b>
					</a>

					<ul class="submenu">
						<li>
							<a href="${pageContext.request.contextPath}/ace/elements.jsp">
								<i class="icon-double-angle-right"></i>
								组件
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/buttons.jsp">
								<i class="icon-double-angle-right"></i>
								按钮 &amp; 图表
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/treeview.jsp">
								<i class="icon-double-angle-right"></i>
								树菜单
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/jquery-ui.jsp">
								<i class="icon-double-angle-right"></i>
								jQuery UI
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/nestable-list.jsp">
								<i class="icon-double-angle-right"></i>
								可拖拽列表
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-double-angle-right"></i>

								三级菜单
								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="#">
										<i class="icon-leaf"></i>
										第一级
									</a>
								</li>

								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-pencil"></i>

										第四级
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="#">
												<i class="icon-plus"></i>
												添加产品
											</a>
										</li>

										<li>
											<a href="#">
												<i class="icon-eye-open"></i>
												查看商品
											</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>

				<li>
					<a href="#" class="dropdown-toggle">
						<i class="icon-list"></i>
						<span class="menu-text"> 表格 </span>

						<b class="arrow icon-angle-down"></b>
					</a>

					<ul class="submenu">
						<li>
							<a href="${pageContext.request.contextPath}/ace/tables.jsp">
								<i class="icon-double-angle-right"></i>
								简单 &amp; 动态
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/grid.jsp">
								<i class="icon-double-angle-right"></i>
								jqGrid plugin
							</a>
						</li>
					</ul>
				</li>

				<li>
					<a href="#" class="dropdown-toggle">
						<i class="icon-edit"></i>
						<span class="menu-text"> 表单 </span>

						<b class="arrow icon-angle-down"></b>
					</a>

					<ul class="submenu">
						<li>
							<a href="${pageContext.request.contextPath}/ace/elements.jsp">
								<i class="icon-double-angle-right"></i>
								表单组件
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/form-wizard.jsp">
								<i class="icon-double-angle-right"></i>
								向导提示 &amp; 验证
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/wysiwyg.jsp">
								<i class="icon-double-angle-right"></i>
								编辑器
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/dropzone.jsp">
								<i class="icon-double-angle-right"></i>
								文件上传
							</a>
						</li>
					</ul>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/ace/widgets.jsp">
						<i class="icon-list-alt"></i>
						<span class="menu-text"> 插件 </span>
					</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/ace/calendar.jsp">
						<i class="icon-calendar"></i>

						<span class="menu-text">
									日历
									<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
					</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/ace/gallery.jsp">
						<i class="icon-picture"></i>
						<span class="menu-text"> 相册 </span>
					</a>
				</li>

				<li>
					<a href="#" class="dropdown-toggle">
						<i class="icon-tag"></i>
						<span class="menu-text"> 更多页面 </span>

						<b class="arrow icon-angle-down"></b>
					</a>

					<ul class="submenu">
						<li>
							<a href="${pageContext.request.contextPath}/ace/profile.jsp">
								<i class="icon-double-angle-right"></i>
								用户信息
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/inbox.jsp">
								<i class="icon-double-angle-right"></i>
								收件箱
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/pricing.jsp">
								<i class="icon-double-angle-right"></i>
								售价单
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/invoice.jsp">
								<i class="icon-double-angle-right"></i>
								购物车
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/timeline.jsp">
								<i class="icon-double-angle-right"></i>
								时间轴
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/login.jsp">
								<i class="icon-double-angle-right"></i>
								登录 &amp; 注册
							</a>
						</li>
					</ul>
				</li>

				<li class="active open">
					<a href="#" class="dropdown-toggle">
						<i class="icon-file-alt"></i>

						<span class="menu-text">
									其他页面
									<span class="badge badge-primary ">5</span>
								</span>

						<b class="arrow icon-angle-down"></b>
					</a>

					<ul class="submenu">
						<li >
							<a href="${pageContext.request.contextPath}/ace/faq.jsp">
								<i class="icon-double-angle-right"></i>
								帮助
							</a>
						</li>

						<li class="active">
							<a href="${pageContext.request.contextPath}/ace/error-404.jsp">
								<i class="icon-double-angle-right"></i>
								404错误页面
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/error-500.jsp">
								<i class="icon-double-angle-right"></i>
								500错误页面
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/grid.jsp">
								<i class="icon-double-angle-right"></i>
								网格
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath}/ace/blank.jsp">
								<i class="icon-double-angle-right"></i>
								空白页面
							</a>
						</li>
					</ul>
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
						<a href="#">主页</a>
					</li>

					<li>
						<a href="#">错误页面</a>
					</li>
					<li class="active">权限不足页</li>
				</ul><!-- .breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<div class="error-container">
							<div class="well">
								<h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="icon-sitemap"></i>
												888
											</span>
									权限不足
								</h1>
								<hr />
								<h3 class="lighter smaller">您的权限不足，请联系管理员！</h3>
								<div>
									<div class="space"></div>
									<h4 class="smaller">您可以尝试以下操作:</h4>
									<ul class="list-unstyled spaced inline bigger-110 margin-15">
										<li>
											<i class="icon-hand-right blue"></i>
											访问别页面
										</li>
										<li>
											<i class="icon-hand-right blue"></i>
											联系管理员
										</li>
										<li>
											<i class="icon-hand-right blue"></i>
											提高您的职级
										</li>
									</ul>
								</div>

								<hr />
								<div class="space"></div>

								<div class="center">
									<a href="#" onclick="javascript:history.back(-1);" class="btn btn-grey">
										<i class="icon-arrow-left"></i>
										返回上一页
									</a>

									<a href="#" class="btn btn-primary">
										<i class="icon-dashboard"></i>
										访问主页
									</a>
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
</body>
</html>