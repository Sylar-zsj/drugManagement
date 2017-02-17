<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">

  	 <title>-系统登录</title>

  	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<link rel="stylesheet" href="css/manager_login.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  	<script type="text/javascript" src="js/login.js"></script>
  	</head>
  
 <body leftmargin="0">
		<div class="main_bar">
			<div id="login_form">
				<div class="title">
					药店管理系统登录界面
				</div>
				<!-- <form action="user_login.action" method="post" novalidate="novalidate"> -->
				<div id="form_widget">
					<br>
					<span class="errorMsg"></span>
					<div class="ttxt">用户名:</div>
					<input type="text" placeholder="请输入账号"  name="u_name" id="u_name" class="txt"/>
					<br/>
					<div class="ttxt">密&nbsp;码:</div>
					<input type="password" placeholder="请输入密码" name="u_password" id="u_password" class="txt"/>
					<br/>
					<div class="ttxt">验证码:</div>
					<input type="text" placeholder="请输入验证码" id="checkcode" name="checkcode" class="txt"/><img class="checkImage"  id="checkImg" src="checkImg.action"  title="点击更换验证码">
					<br>
					<input type="submit" value="登录" class="btn" onmouseover="this.style.backgroundColor='#044682'" onmouseout="this.style.backgroundColor='#C2C2C2'">
					<br>
					<div id="copyright">
						Power By ZSJ&copy;CopyRight CX since 2016
					</div>
				</div>
				<!-- </form> -->
			</div>
		</div>
	</body>
</html>
