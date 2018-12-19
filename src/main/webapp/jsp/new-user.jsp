<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>添加用户信息</title>  
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/lib/font-awesome.css" /> 
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/html/css/compiled/new-user.css" type="text/css" media="screen" />
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
            <div id="pad-wrapper" class="new-user">
                <div class="row-fluid header">
                    <h3>创建一个新用户</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form class="new_user_form inline-input" action="<%=request.getContextPath() %>/user/insertUser.action" method="post"/>
                                <div class="span12 field-box">
                                    <label>姓名:</label>
                                    <input class="span9" type="text" name="username"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>密码:</label>
                                    <input class="span9" type="text" name="password"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>性别:</label>
                                    <input class="span9" type="text" name="sex"/>
                                </div>                        
                                <div class="span12 field-box">
                                    <label>地址:</label>
                                    <div class="address-fields">
                                        <input class="span12" type="text" placeholder="Street address" name="address1"/>
                                        <input class="span12 small" type="text" placeholder="City" name="address2"/>
                                        <input class="span12 small" type="text" placeholder="State" name="address3"/>
                                        <input class="span12 small last" type="text" placeholder="Postal Code" name="address4"/>
                                    </div>
                                </div>
                                <div class="span12 field-box textarea">
                                    <label>其它:</label>
                                    <textarea class="span9" name="other"></textarea>
                                    <span class="charactersleft">剩余90个字符。字段限制为100个字符</span>
                                </div>
                                <div class="span11 field-box actions">
                                    <input type="submit" class="btn-glow primary" value="创建用户" />
                                    <span>或者</span>
                                    <input type="reset" value="取消" class="reset" />
                                </div>
                            </form>
                        </div>
                    </div>           
                </div>
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