<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<link type="text/css" rel="stylesheet" href="css/adddAdmin.css"/>
    <script type="text/javascript" src="js/addAdmin.js"></script></head>
<!--   <script type="text/javascript">
  	function show(){
		var name=document.getElementById("file_name").value;
		alert(name);
			document.getElementById("filename").value=name;
	}
  </script> -->
  <body>
  <div class="addAdmin_Bar">
			<div class="bg"></div>
			<div id="login_form">
					<br>
					<ul>
		                <li>用户名:<input type="text" name="u_name" id="u_name"  class="txt" required aria-required="true" placeholder="请输入用户名"></li>
		                <li>密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="u_password"  id="u_password" class="txt" required aria-required="true"></li>
		                <li>头&nbsp;&nbsp;&nbsp;&nbsp;像:<div class="uploader">
		                			  <input type="text" class="filename" id="filename" name="u_pic"/>
									  <input type="button" class="button" value="点击选择"/>
									  <input type="file"  name="file" size="100" id="file"/>
									  </div>
		                </li>
		                <li class="addAdmin"><a class="btn">提交</a></li>
           			 </ul>
			</div>
			</div>
		</div>
  </body>
</html>
