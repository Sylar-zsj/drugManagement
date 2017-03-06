<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
  	 <title>系统登录</title>
  	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<link rel="stylesheet" href="css/manager_login.css" type="text/css"></link>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  	<script type="text/javascript" src="js/login.js"></script>
  	</head>
 <!--  	<script type="text/javascript">
  		function change(){
		var checkImg1 = document.getElementById("checkImg");
		checkImg1.src="checkImg.action?time="+new Date().getTime();
	} 
  	</script>-->
  
 <body leftmargin="0">
		<div class="main_bar">
			<div class="bg"></div>
			<div id="login_form">
					<span class="errorMsg"></span>
					<br>
					<ul>
		                <li>用户名:<input type="text" name="u_name" id="u_name"  class="txt" required aria-required="true" placeholder="请输入账号"></li>
		                <li>密&nbsp;码:<input type="password" name="u_password"  id="u_password" class="txt" required aria-required="true"></li>
		                <li>验证码:<input type="text" placeholder="请输入验证码" id="checkcode" name="checkcode"  class="txt"/><img class="checkImage"  id="checkImg" src="checkImg.action"  title="点击更换验证码"></li>
		               
		                <li class="login"><a class="btn">登录</a></li>
		                <li class="rest"><a href="javascript:window.location.reload()">重置</a></li>
           			 </ul>
			</div>
			</div>
		</div>
	</body>
</html>
