<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'getCurrentPage_WaitingActivity.jsp' starting page</title>
    
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

    .goodsli{
        padding-left: 20px;
        padding-top: 10px;
        border-bottom: 2px solid #e3e3e3;
        padding-bottom: 20px;
    }
    .leftpic{
        width: 100%;
        height: 100px;
        border-radius: 5px;
    }
    .ptime{
        color: #ff972c;
    }
    .goodscent{
        margin-top: 0px;
    }
    .goodscent h4{
        padding-bottom: 5px;
    }
    .goodscent p{
        height: 20px;
        line-height: 20px;
    }
</style>
  <body>
    <div class="container" style="padding-bottom: 20px">
    <ul class="nav nav-pills row">
        <li class="navli col-xs-6"><a href="index.jsp" class="aactive">正在进行</a></li>
        <li class="navli liactive col-xs-6"><a href="WaitingActivity.jsp">等待揭晓</a></li>
    </ul>
</div>
<ul class="media-list container">
    <a href="ActivityAction!indexQueryDetailWaitingActivity">
        <li class="media goodsli row clearfix">
            <div href="" class="col-xs-4" style="padding-left: 5px;padding-right: 5px">
                <img src="image/iphone.jpg" class="leftpic">
            </div>
            <div class=" col-xs-5 col-md-6 goodscent " style="padding-left: 5px;padding-right: 5px">
                <p class="media-heading">iPhone6S 64G 白色</p>
                <p class="ptime">揭晓时间：今晚21:30</p>
                <p>总参与：6533人次</p>
                <p>您参与:2人次</p>
            </div>
            <div class="col-xs-2 col-md-3">
                <div style="border: 2px solid #00abec;width:50px;text-align: center;margin-top: 5px;color: #00abec;font-size: 10px;">第001期</div>
            </div>
        </li>
    </a>

    <a href="Ddxx.html">
        <li class="media goodsli row clearfix">
            <div href="" class="col-xs-4" style="padding-left: 5px;padding-right: 5px">
                <img src="image/iphone.jpg" class="leftpic">
            </div>
            <div class=" col-xs-5 col-md-6 goodscent " style="padding-left: 5px;padding-right: 5px">
                <p class="media-heading">iPhone6S 64G 白色</p>
                <p class="ptime">揭晓时间：今晚21:30</p>
                <p>总参与：6533人次</p>
                <p>您参与:2人次</p>
            </div>
            <div class="col-xs-2 col-md-3">
                <div style="border: 2px solid #00abec;width:50px;text-align: center;margin-top: 5px;color: #00abec;font-size: 10px;">第001期</div>
            </div>
        </li>
    </a>

    <a href="Ddxx.html">
        <li class="media goodsli row clearfix">
            <div href="" class="col-xs-4" style="padding-left: 5px;padding-right: 5px">
                <img src="image/iphone.jpg" class="leftpic">
            </div>
            <div class=" col-xs-5 col-md-6 goodscent " style="padding-left: 5px;padding-right: 5px">
                <p class="media-heading">iPhone6S 64G 白色</p>
                <p class="ptime">揭晓时间：今晚21:30</p>
                <p>总参与：6533人次</p>
                <p>您参与:2人次</p>
            </div>
            <div class="col-xs-2 col-md-3">
                <div style="border: 2px solid #00abec;width:50px;text-align: center;margin-top: 5px;color: #00abec;font-size: 10px;">第001期</div>
            </div>
        </li>
    </a>
</ul>
  </body>
</html>
