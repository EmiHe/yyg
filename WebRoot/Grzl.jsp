<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Grzl.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  
  <body>
    <div class="container">
    <div class="row" style="padding-top: 20px;padding-bottom: 10px;padding-left:10px">
        <div class="col-xs-3">
            <img src="image/iphone.jpg" class="img-responsive img-rounded" style="height:50px">
        </div>
        <div class="col-xs-9">
            <p><strong>张三</strong></p>
            <p><strong>联系电话：13486758455</strong></p>
        </div>
    </div>
    <div class="row">
        <ul class="list-group">
            <li class="list-group-item">
                <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>
                <span class="glyphicon glyphicon-user" style="margin-left:10px;padding-right: 10px"></span>
                显示姓名：<strong>张三</strong>
            </li>
            <li class="list-group-item">
                <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>
                <span class="glyphicon glyphicon-phone" style="margin-left:10px;padding-right: 10px"></span>
                联系电话：<strong>15654892156</strong>
            </li>
            <li class="list-group-item">
                <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>
                <span class="glyphicon glyphicon-tower" style="margin-left:10px;padding-right: 10px"></span>
                收获地址：<strong>新都区西南石油大学</strong>
            </li>
        </ul>
    </div>


</div>
  </body>
</html>
