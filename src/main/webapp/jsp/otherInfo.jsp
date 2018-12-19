<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>其它信息</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- bootstrap -->
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/icons.css" />
    <!-- libraries -->
    <link href="<%=request.getContextPath() %>/static/html/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/html/css/compiled/user-list.css" type="text/css" media="screen" />
    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
    <!-- header 包含头部导航-->
	<%@include file="upper.jsp"%>
	<!-- header 包含左部分导航-->
	<%@include file="left.jsp"%>
	<!-- main container -->
    <div class="content">           
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid table">
                	<h4 style="color: green;">测试请先下载最新沙箱钱包,账号密码如下:</h4>
                	<h4 style="color: green;">微信支付暂时使用的是我司商户号,请自行修改(微信支付回调地址没加,测试自行加上)</h4>
                    <table class="table table-hover">
                        <thead>
                            <tr><th class="span4 sortable">买家账号:ibgbbc0417@sandbox.com</th></tr>
                            <tr><th class="span4 sortable">登录密码:111111</th></tr>
                            <tr><th class="span4 sortable">支付密码:111111</th></tr>
                        </thead>
                 	</table>
             	</div>
                <!-- end users table -->
           	</div>
       	</div>
    </div>
    <!-- end main container -->
	<!-- scripts -->
    <script src="<%=request.getContextPath() %>/static/html/js/jquery-latest.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/theme.js"></script>
</body>
</html>