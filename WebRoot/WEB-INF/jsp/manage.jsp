<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="js/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
	<link href="js/waves-0.7.5/waves.min.css" rel="stylesheet"/>
	<link href="js/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>
	<link href="css/manage.css" rel="stylesheet"/>
</head>
<body>
<header id="header">
	<ul id="menu">
		<li id="logo" class="hidden-xs">
			<a href="index.html">
				<img src="images/logo.png"/>
			</a>
		</li>
		<li class="pull-right">
			<ul class="hi-menu">
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-more-vert"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<li class="hidden-xs">
							<a class="waves-effect" data-ma-action="fullscreen" href="javascript:;"><i class="zmdi zmdi-fullscreen"></i> 全屏模式</a>
						</li>
						<li>
							<a class="waves-effect" data-ma-action="clear-localstorage" href="javascript:;"><i class="zmdi zmdi-delete"></i> 清除缓存</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-face"></i> 隐私管理</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-settings"></i> 系统设置</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-run"></i> 退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</header>
<section id="main">
	<!-- 左侧导航区 -->
	<aside id="sidebar">
		<!-- 个人资料区 -->
		<div class="s-profile">
			<a class="waves-effect waves-light" href="javascript:;">
				<div class="sp-pic">
					<img src="images/avatar.jpg"/>
				</div>
				<div class="sp-info">
					张思静，您好！
					<i class="zmdi zmdi-caret-down"></i>
				</div>
			</a>
			<ul class="main-menu">
				<li>
					<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-account"></i> 个人资料</a>
				</li>
				<li>
					<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-settings"></i> 系统设置</a>
				</li>
				<li>
					<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-run"></i> 退出登录</a>
				</li>
			</ul>
		</div>
		<!-- /个人资料区 -->
		<!-- 菜单区 -->
		<ul class="main-menu">
			<li>
				<a class="waves-effect" href="javascript:Tab.addTab('首页', 'home');"><i class="zmdi zmdi-home"></i> 首页</a>
			</li>
			<li class="sub-menu">
				<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-widgets"></i> 系统组织管理</a>
				<ul>
					<li><a class="waves-effect" href="javascript:Tab.addTab('系统注册', '1.html');">系统注册</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('组织管理', '2.html');">组织管理</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-widgets"></i> 用户角色管理</a>
				<ul>
					<li><a class="waves-effect" href="javascript:Tab.addTab('用户管理', '3.html');">用户管理</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('角色管理', '4.html');">角色管理</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-widgets"></i> 资源权限管理</a>
				<ul>
					<li><a class="waves-effect" href="javascript:Tab.addTab('资源管理', '5.html');">资源管理</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('权限管理', '6.html');">权限管理</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-widgets"></i> 权限分配管理</a>
				<ul>
					<li><a class="waves-effect" href="javascript:Tab.addTab('角色权限', '7.html');">角色权限</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('用户权限', '8.html');">用户权限</a></li>
				</ul>
			</li>
			<li class="sub-menu toggled">
				<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-widgets"></i> DEMO</a>
				<ul>
					<li><a class="waves-effect" href="javascript:Tab.addTab('获取资源(DEMO)', '9.html');">获取资源(DEMO)</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('获取权限(DEMO)', '10.html');">获取权限(DEMO)</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('单点登录(DEMO)', '11.html');">单点登录(DEMO)</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('增删改查', 'crud.html');">增删改查</a></li>
					<li><a class="waves-effect" href="javascript:Tab.addTab('公共素材', 'demo.html');">公共素材</a></li>
				</ul>
			</li>
			<li>
				<div class="upms-version">&copy; ZHENG-UPMS V1.0.0</div>
			</li>
		</ul>
		<!-- /菜单区 -->
	</aside>
	<!-- /左侧导航区 -->
	<section id="content">
		<div class="content_tab">
			<div class="tab_left">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-left"></i></a>
			</div>
			<div class="tab_right">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-right"></i></a>
			</div>
			<ul id="tabs" class="tabs">
				<li id="tab_home" data-index="home" data-closeable="false" class="cur">
					<a class="waves-effect waves-light" href="javascript:;">首页</a>
				</li>
			</ul>
		</div>
		<div class="content_main">
			<div id="iframe_home" class="iframe cur">
				<iframe   src="index_welcome.action" width="100%" height="100%" frameborder="0"></iframe>
			</div>
		</div>
	</section>
</section>
<footer id="footer"></footer>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/bootstrap-3.3.0/js/bootstrap.min.js"></script>
<script src="js/waves-0.7.5/waves.min.js"></script>
<script src="js/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/bootstrap-3.3.0/BootstrapMenu.min.js"></script>
<script src="js/device.min.js"></script>
<script src="js/manage.js"></script>
</body>
</html>
