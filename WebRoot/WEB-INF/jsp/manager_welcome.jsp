<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>日历</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/easyui.css" />
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/jquery.fullcalendar.js"></script>
	
	</head>

<body class="easyui-layout">

	<div region="center">
		<div class="easyui-fullCalendar" fit="true"></div>
	</div>
</body>
</html>
