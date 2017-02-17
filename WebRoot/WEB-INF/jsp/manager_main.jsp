<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>药店后台管理</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<link rel="stylesheet" type="text/css" href="css/manager_main.css" />
  	<script src="js/jquery-1.8.3.js" type="text/javascript"></script>
  	<style type="text/css">
  		.menu_first{
			background-image:url('Opre_images/title.jpg');	
			background-repeat:repeat-x;
			width:100%;
			text-align:center;
			line-height:30px;
		}
  	</style>
  	<script>
		$(function(){
			$(".menu_first > a").click(function(){
				var list = $(this).next("ul");
				list.slideToggle("fast");
			});
			
			$(".menu_first > ul > li").hover(
			function(){
				$(this).css('display','block');
				$(this).css('background','#F0F0F0');
				$(this).children('a').css('color','#000000');
			},function(){
				$(this).css('display','block');
				$(this).css('background-color','#808080');
				$(this).children('a').css('color','#ffffff');
			});
		});
		
		function CloseWin() //这个不会提示是否关闭浏览器   
		{   
			window.opener=null;   
			window.open("","_self");   
			window.close();   
		}    
	</script>
  	
  	</head>
  <body leftmargin="0" topmargin="0">
		<div id="main">
			<div id="top">
				<a href="Skip/manager_main.do"><img border="0" src="Opre_images/logo.png" style="position:absolute;top:16px;left:25px;height:65px;width:190px"/></a>
				<div id="title">成蹊后台管理</div>
			</div>
			<div id="left">
				<ul class="menu_main">
					<li class="menu_first"><a>首页Banner管理</a>
						<ul>
							<li><a href='Skip/add_banner.do' target="right">Banner图片上传</a></li>
							<li><a href='Banner/Banner_queryAll.do' target="right">Banner图片列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>文章管理</a>
						<ul>		
							<li><a href='Skip/article_insert.do' target="right">文章添加</a></li>
							<li><a href='Article/queryAll.do' target="right">文章列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>APP管理</a>
						<ul>		
							<li><a href='Skip/app_upload.do' target="right">app图片上传</a></li>
							<li><a href="App/App_queryAll.do" target="right">app图片列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>招聘管理</a>
						<ul>
							<li><a href="Skip/recruit_insert.do" target="right">添加招聘信息</a></li>
							<li><a href="Recruit/Recruit_queryAll.do" target="right">招聘信息列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>动态管理</a>
						<ul>
							<li><a href="Skip/news_insert.do" target="right">添加动态信息</a></li>
							<li><a href="News/News_queryAll.do" target="right">动态列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>合作学校管理</a>
						<ul>
							<li><a href='Skip/school_insert.do' target="right">添加合作信息</a></li>
							<li><a href='School/School_queryAllByPage.do?p_pageindex=1' target="right">合作学校列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>管理员</a>
						<ul>
							<li><a href='Skip/insert_User.do' target="right">添加登录信息</a></li>
							<li><a href='user/queryAll.do' target="right">管理员列表</a></li>
						</ul>
					</li>
					<li class="menu_first"><a>系统设置</a>
						<ul>
							<li><a href="Connect/Connect_queryAll.do" target="right">联系我们</a></li>
							<li><a href="" onclick="CloseWin()">系统退出</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div id="right">
				<iframe   src="Skip/manager_welcome.do" name="right" width="100%" height="100%" frameborder="0"></iframe>
			</div>
		</div>
	</body>
</html>
