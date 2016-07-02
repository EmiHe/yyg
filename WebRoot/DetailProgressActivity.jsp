<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DetailActivity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  <style>
    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    li{
        list-style: none;
    }
    .spantitle{
        margin-left: 10%;
    }
    .w-progressBar-txt li {
        float: left;
        width: 50%;
        line-height: 18px;
    }
    .w-progressBar-txt p {
        display: block;
        color: #999;
    }
    .w-progressBar-txt .w-progressBar-txt-r {
        float: right;
        border: 0;
        text-align: right;
    }
</style>
  <body>
<div class="container-fluid clearfix">
    <div class="col-sm-12 text-center" style="margin-top: 20px">
        <img src="image/iphone.jpg" style="width: 40%;height: 15%">
    </div>
    <div class="col-sm-12" style="margin-top: 20px">
        <span  style="border: 2px solid #00abec;width:70px;text-align: center;margin-top: 40px;color: #00abec;">第023期</span>
        <span class="spantitle">iPhone6S</span>
        <span class="spantitle">64G</span>
        <span class="spantitle">白色</span>
    </div>
    <div class="col-sm-12">
        <p style="margin-top: 10px">开奖后公开中奖信息，各参与人可轻易推算中奖结果，开奖后1到3个工作日将宝贝寄出</p>
        <div class="progress" style="height:10px">
            <div class="progress-bar progress-bar-danger" role="progressbar"
                 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                 style="width: 40%;">
                <span class="sr-only">10% 完成（危险）</span>
            </div>
        </div>
        <ul class="w-progressBar-txt f-clear clearfix">
            <li class="w-progressBar-txt-l"><p><b>8580</b></p><p>已参与人次</p></li>
            <li class="w-progressBar-txt-r"><p><b>10320</b></p><p>剩余人次</p></li>
        </ul>
    </div>
</div>
<ul class="list-group" style="margin-top: 10px">
    <li class="list-group-item">
        <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>开奖算法
    </li>
    <li class="list-group-item">
        <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>
        <a href="ActivityAction!UserNumberOfProgressActivity">我已参与</a>
    </li>
    <li class="list-group-item">
        <span class=" glyphicon glyphicon-chevron-right" style="float: right"></span>
        <a href="ActivityAction!indexQueryCompleteActivirtyByPage">往期揭晓</a>
    </li>
</ul>
<p class="text-center">
    <a href="ActivityAction!JoinProgressActivity"><input type="button" class="btn btn-danger text-center btn-block" value="立即参与"></a>.
</p>
  </body>
</html>
