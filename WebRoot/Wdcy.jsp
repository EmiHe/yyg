<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Wdcy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  <style>
    .numberul li{
        list-style:none;
        float: left;
        width: 25%;
    }
</style>
  <body>
    <div class="container">
    <p>您本期一共参与了10人次</p>
    <ul class="numberul">
        <li>00021</li>
        <li>00021</li>
        <li>00021</li>
        <li>00021</li>
        <li>00021</li>
    </ul>
</div>
  </body>
</html>
