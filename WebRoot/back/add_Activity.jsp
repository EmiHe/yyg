<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Activity_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/common.css" rel="stylesheet">

  </head>
  
  <body>
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <span class="navbar-brand">一元购后台管理系统</span>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li  class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">活动管理</a></li>
                        <li><a href="#">未揭晓</a></li>
                        <li><a href="#">往期管理</a></li>
                        <li class="divider"></li>
                        <li><a href="#">设置</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">帮助</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名">
                    <input type="text" class="form-control" placeholder="密码">
                </div>
                <button type="submit" class="btn btn-default">登录</button>
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-2 leftrow">
            <ul class="nav nav-sidebar">
                <li>
                    <a href="#">首页</a>
                </li>
                <li><a href="#"></a></li>
                <li class="active"><a href="#">发布活动</a></li>
                <li><a href="#">正在进行</a></li>
                <li><a href="#">等待揭晓</a></li>
                <li><a href="#">往期管理</a></li>
                <li><a href="#"></a></li>
                <li><a href="#">设置</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <div class="col-md-10 col-md-offset-2 rightrow">
            <div class="page-header">
                <!--<h4>管理控制台</h4>-->
            </div>
            <!--<div class="row gourpbtn">-->
                <!--<a class="btn btn-primary" role="button">添加活动</a>-->
            <!--</div>-->


            <div class="well">
                <form action="ActivityAction.add_Activity.action" class="form-horizontal text-center" role="form">
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">手机名</label>
                        <div class="col-sm-10">
                            <input type="text" name="goodname" class="form-control" id=""
                                   placeholder="请输入手机名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastname" class="col-sm-2 control-label">型号</label>
                        <div class="col-sm-10">
                            <input type="text" name="goodtype" class="form-control" id=""
                                   placeholder="请输入型号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">颜色</label>
                        <div class="col-sm-10">
                            <input type="text" name="goodcolor" class="form-control" id=""
                                   placeholder="请输入颜色">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">总号数</label>
                        <div class="col-sm-10">
                            <input type="text" name="numberCount" class="form-control" id=""
                                   placeholder="请输入总号数" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">已售号数</label>
                        <div class="col-sm-10">
                            <input type="text" name="numberSaled" class="form-control" id=""
                                   placeholder="默认0" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">产品类型</label>
                        <div class="col-sm-10">
                            <input type="text" name="bandCategory" class="form-control " id=""
                                   placeholder="苹果或者安卓" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">活动状态</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control " id=""
                                   placeholder="默认正在进行" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">揭晓时间</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id=""
                                   placeholder="计算得到" disabled>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="" class="col-sm-2 control-label">当前期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control " id=""
                                   placeholder="自动生成当前期" disabled>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-11">
                            <button type="submit" class="btn btn-primary">提交</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>


</div>
  </body>
</html>
