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
    
    <title>My JSP 'getCurrentPage_Activity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>

  </head>
  <style>
    body{
        font-size: 12px;
    }
    p {
        margin: 0 0 5px;
    }
    .navli{
        width:49%;
        text-align: center;
        font-size: 16px;
    }
    .liactive{
        border-bottom: 2px solid #00abec;
    }
    .aactive{
        color: #00abec;
    }

    .f-clear {
    +zoom: 1;
    }
    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    li{
        list-style: none;
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
    <div class="col-xs-push-6" le="padding-bottom: 20px">
    <ul class="nav nav-pills">
        <li class="navli liactive"><a href="index.jsp" class="aactive">正在进行</a></li>
        <li class="navli"><a href="WaitingActivity.jsp">等待揭晓</a></li>
    </ul>
</div>
<div class="container" style="margin-top: 20px">
    <div class="row">

    <c:forEach items="${activityList}" var="m">
        <div class="col-xs-6 col-md-3" style="padding-right: 5px;padding-left: 5px;">
            <div class="thumbnail" style="padding: 5px">
                <img src="image/iphone.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption" style="padding: 5px">
                    <p>${m.goodname} ${ m.goodcolor} ${m.goodtype} </p>

                    <div class="progress" style="height: 5px;margin-bottom: 5px">
                        <div class="progress-bar progress-bar-danger" role="progressbar"
                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                             style="width: 40%;">
                            <span class="sr-only">10% 完成（危险）</span>
                        </div>
                    </div>

                    <ul class="w-progressBar-txt f-clear clearfix">
                        <li class="w-progressBar-txt-l"><p><b>${m.numberCount}</b></p><p>已参与人次</p></li>
                        <li class="w-progressBar-txt-r"><p><b>${m.numberSaled}</b></p><p>剩余人次</p></li>
                    </ul>
                    <p>
                        <a href="ActivityAction!indexQueryDetailProgressActivity" class="btn btn-primary" role="button" style="width: 100%">
                            立即参于
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </c:forEach>
    
    
        <div class="col-xs-6 col-md-3" style="padding-right: 5px;padding-left: 5px;">
            <div class="thumbnail" style="padding: 5px">
                <img src="image/iphone.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption" style="padding: 5px;">
                    <p>iPhone6S 64G 白色</p>

                    <div class="progress" style="height: 5px;margin-bottom: 5px">
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
                    <p>
                        <a href="#" class="btn btn-primary" role="button" style="width: 100%">
                            立即参与
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3" style="padding-right: 5px;padding-left: 5px;">
            <div class="thumbnail" style="padding: 5px">
                <img src="image/iphone.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption" style="padding: 5px">
                    <p>iPhone6S 64G 白色</p>

                    <div class="progress" style="height: 5px;margin-bottom: 5px">
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
                    <p>
                        <a href="Zzqj.html" class="btn btn-primary" role="button" style="width: 100%">
                            立即参于
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3" style="padding-right: 5px;padding-left: 5px;">
            <div class="thumbnail" style="padding: 5px">
                <img src="image/iphone.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption" style="padding: 5px">
                    <p>iPhone6S 64G 白色</p>

                    <div class="progress" style="height: 5px;margin-bottom: 5px">
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
                    <p>
                        <a href="Zzqj.html" class="btn btn-primary" role="button" style="width: 100%">
                            立即参于
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
  </body>
</html>
