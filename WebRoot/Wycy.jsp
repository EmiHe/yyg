<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Wycy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
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
        padding-left: 0px;
        padding-top: 10px;
        border-bottom: 2px solid #e3e3e3;
        padding-bottom: 20px;
    }
    .leftpic{
        width: 100%;
        height: 70px;
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
    <div class="container">
    <div class="goodsli row">
        <div href="" class="col-xs-4 col-md-3">
            <img src="image/iphone.jpg" class="leftpic">
        </div>
        <div class=" col-xs-6 col-md-6 goodscent">
            <p class="media-heading"><strong>iPhone6S 64G 白色</strong></p>
            <p class="ptime">第：1234期</p>
            <p>您参与:2人次</p>

        </div>
        <div class="col-xm-2 col-md-3">
            <!--<div style="border: 2px solid #00abec;width:70px;text-align: center;margin-top: 40px;color: #00abec;">第001期</div>-->
        </div>
    </div>
    <div style="margin-top: 10px">
        <div class="progress" style="height: 5px;margin-bottom: 5px">
            <div class="progress-bar progress-bar-danger" role="progressbar"
                 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                 style="width: 40%;">
                <span class="sr-only">10% 完成（危险）</span>
            </div>
        </div>
        <ul class="w-progressBar-txt f-clear clearfix">
            <li class="w-progressBar-txt-l"><p>总参与人次:6533</p></li>
            <li class="w-progressBar-txt-r"><p>您参与:2</p></li>
        </ul>
    </div>

    <form class="form-horizontal">
        <div class="form-group">
            <p class="text-center">请选择参与人数</p>
        </div>
        <div class="form-group">
            <label class="col-xs-2 control-label text-right">+</label>
            <div class="col-xs-8">
                <input type="password" class="form-control" id="inputPassword"
                       placeholder="5">
            </div>
            <label class="col-xs-2 control-label text-left">-</label>
        </div>
        <div class="form-group text-center">
            <button class="btn btn-default" style="margin-left:22px;margin-right: 22px ">5</button>
            <button class="btn btn-default" style="margin-left:22px;margin-right: 22px ">20</button>
            <button class="btn btn-default" style="margin-left:22px;margin-right: 22px">50</button>
            <button class="btn btn-default" style="margin-left:22px;margin-right: 22px">100</button>
        </div>
        <div class="form-group container">
            <input type="submit" class="btn btn-danger btn-block" value="确定参与" >
        </div>
    </form>

</div>
  </body>
</html>
