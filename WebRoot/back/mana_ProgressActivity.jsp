<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mana_Activity.jsp' starting page</title>
    
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
                        <li><a href="#">正在进行</a></li>
                        <li><a href="#">等待揭晓</a></li>
                        <li><a href="#">往期管理</a></li>
                        <li class="divider"></li>
                        <li><a href="#">设置</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">帮助</a>
                </li>
            </ul>
            <!--<form class="navbar-form navbar-right">-->
                <!--<div class="form-group">-->
                    <!--<input type="text" class="form-control" placeholder="用户名">-->
                    <!--<input type="text" class="form-control" placeholder="密码">-->
                <!--</div>-->
                <!--<button type="submit" class="btn btn-default">登录</button>-->
            <!--</form>-->
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2 leftrow">
            <ul class="nav nav-sidebar">
                <li>
                    <a href="#">首页</a>
                </li>
                <li><a href="#"></a></li>
                <li><a href="back/add_Activity.jsp">发布活动</a></li>
                <li class="active"><a href="back/mana_ProgressActivity.jsp">正在进行</a></li>
                <li><a href="back/mana_WaitingActivity.jsp">等待揭晓</a></li>
                <li><a href="back/mana_CompleteActivity.jsp">往期管理</a></li>
                <li><a href="#"></a></li>
                <li><a href="#">设置</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <div class="col-md-10 col-md-offset-2 rightrow">
            <div class="page-header">
                <h1>管理控制台</h1>
            </div>
            <div class="row gourpbtn">
                <a class="btn btn-primary" role="button">发布活动</a>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            正在进行
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>当前期</th>
                                    <th>手机名</th>
                                    <th>型号</th>
                                    <th>颜色</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>001</td>
                                    <td><a href="back/detail_Activity.jsp">Apple Macbook air</a></td>
                                    <td>iPhone6S 64G</td>
                                    <td>白色</td>
                                    <td>正在进行</td>
                                </tr>
                                <tr>
                                    <td>002</td>
                                    <td><a href="#">Apple iPad air</a></td>
                                    <td>iPhone6S 64G</td>
                                    <td>黑色</td>
                                    <td>正在进行</td>
                                </tr>
                                <tr>
                                    <td>003</td>
                                    <td><a href="#">Apple Macbook pro</a></td>
                                    <td>iPhone6S 64G</td>
                                    <td>白色</td>
                                    <td>正在进行</td>
                                </tr>
                                </tbody>
                            </table>
                            <!--<button type="button" class="btn btn-primary">查看详细>></button>-->
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

  </body>
</html>
