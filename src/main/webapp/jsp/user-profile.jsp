<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>订单信息列表</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- bootstrap -->
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/static/html/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
    <!-- libraries -->
    <link href="<%=request.getContextPath() %>/static/html/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/html/css/icons.css" />  
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/html/css/compiled/user-profile.css" type="text/css" media="screen" />
    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<!--引用vue的js-->
    <script src="<%=request.getContextPath() %>/static/html/vue/vue.min.js"></script>
    <!--分页插件-->
    <script src="<%=request.getContextPath() %>/static/html/vue/laypage.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath() %>/static/html/vue/layer.js" charset="utf-8"></script>
<body>
    <!-- header 包含头部导航-->
	<%@include file="upper.jsp"%>
	<!-- header 包含左部分导航-->
	<%@include file="left.jsp"%>
	<!-- main container -->
    <div class="content">             
        <div class="container-fluid">
            <div id="pad-wrapper" class="user-profile">
                <div class="row-fluid profile">
                    <!-- bio, new note & orders column -->
                    <div class="span9 bio">
                        <div class="profile-box"  id="order">
                            <!-- recent orders table -->
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th class="span2">订单号</th>
                                        <th class="span3">
                                            <span class="line"></span>订单状态
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>订单数量
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>总金额
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>创建时间
                                        </th>
                                    </tr>
                                </thead>
                                <thead>
                                    <!-- row -->
                                    <tr class="first" v-for="(item,index) in thisList">
                                        <td>{{item.orderNum}}</td>
                                        <td>{{item.orderStatus}}</td>
                                        <td>{{item.orderAmount}}</td>
                                        <td>{{item.paidAmount}}</td>
                                        <td>{{item.createTime}}</td>
                                    </tr>                    
                                </thead>
                            </table>
                        </div>
                        <!-- new comment form -->
                        <!-- <div class="span12 section comment">
                                <h6>添加快速说明</h6>
                                <p>添加关于此用户的备注以保留您的互动历史记录。</p>
                                <textarea></textarea>
                                <div class="span12 submit-box pull-right">
                                    <input type="button" class="btn-glow primary" value="添加" />
                                    <span>或者</span>
                                    <input type="reset" value="取消" class="reset" />
                                </div>
                        </div> -->
                        <input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>   
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
    <script type="text/javascript">
    var hdnContextPath = $("#hdnContextPath").val();
 	var order = new Vue({
        el : '#order',
        data : {
            thisList: []
        }
    });
    getOrderList();
    function getOrderList(){
    	$.ajax({
            url:hdnContextPath+'/ord/orderList.action',
            type:'post',
            dataType:'json',
            error:function(){
                alert("错误");
            },
            success:function (msg) {
            	order.thisList = msg.orderList;
            }
        });
    }
    </script>
</body>
</html>