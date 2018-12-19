<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>左部分</title>   
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />	
    <!-- bootstrap -->
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
    <!-- libraries -->
    <link href="<%=request.getContextPath() %>/static/html/css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/static/html/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/icons.css" />
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/html/css/compiled/index.css" type="text/css" media="screen" />    
    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
    <!-- lato font -->
    <link href='http://fonts.useso.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="<%=request.getContextPath() %>/jsp/main.jsp">
                    <i class="icon-home"></i>
                    <span>主页</span>
                </a>
            </li>            
            <li>
                <a href="<%=request.getContextPath() %>/jsp/main.jsp">
                    <i class="icon-signal"></i>
                    <span>图表</span>
                </a>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>用户信息</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="<%=request.getContextPath() %>/jsp/user-list.jsp">用户信息</a></li>
                    <li><a href="<%=request.getContextPath() %>/jsp/new-user.jsp">添加用户</a></li>
                    <li><a href="<%=request.getContextPath() %>/jsp/user-profile.jsp">订单展示</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>商品信息</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="<%=request.getContextPath() %>/jsp/product-list.jsp">商品展示</a></li>
                </ul>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/jsp/otherInfo.jsp">
                    <i class="icon-cog"></i>
                    <span>My Info</span>
                </a>
            </li>
        </ul>
    </div>
	<!-- scripts -->
    <script src="<%=request.getContextPath() %>/static/html/js/jquery-latest.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/jquery-ui-1.10.2.custom.min.js"></script>
    <!-- knob -->
    <script src="<%=request.getContextPath() %>/static/html/js/jquery.knob.js"></script>
    <!-- flot charts -->
    <script src="<%=request.getContextPath() %>/static/html/js/jquery.flot.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/jquery.flot.stack.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/jquery.flot.resize.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/theme.js"></script>
</body>
</html>