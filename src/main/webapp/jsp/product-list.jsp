<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>商品信息列表</title>
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
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid table" id="app">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="span4 sortable">主键</th>
                                <th class="span3 sortable"><span class="line"></span>商品名</th>
                                <th class="span2 sortable"><span class="line"></span>价格</th>
                                <th class="span3 sortable align-right"><span class="line"></span>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                        <tr class="first" v-for="(item,index) in thisList">
                            <td>{{item.id}}</td>
                            <td>{{item.name}}</td>
                            <td>{{item.price}}</td>
                            <td class="align-right"><a data-clk="" :href="'/paymentSystem/pro/goConfirm.action?productId='+item.id" target="_blank">购买</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- end users table -->
            </div>
            <input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>   
        </div>
    </div>
    <!-- end main container -->
	<!-- scripts -->
    <script src="<%=request.getContextPath() %>/static/html/js/jquery-latest.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/html/js/theme.js"></script>
	<script type="text/javascript">
		var hdnContextPath = $("#hdnContextPath").val();
	 	var app = new Vue({
	        el : '#app',
	        data : {
	            thisList: []
	        }
	    });
	 	getProductList();
	    function getProductList(){
	        $.ajax({
	            url:hdnContextPath+'/pro/products.action',
	            type:'post',
	            dataType:'json',
	            error:function () {
	                alert("错误");
	            },
	            success:function (msg) {
	            	app.thisList = msg.pList;
	            }
	        });
	    }
	    <!--跳转商品详情-->
	    function selectEvent(obj){
	    	alert(obj);
	        $.ajax({
	            url:hdnContextPath+"/pro/goConfirm.action",
	            type:'post',
	            dataType:'json',
	            data:{
	            	productId:obj
	            },
	            error:function () {
	                alert("错误");
	            },
	            success:function (msg) {
	            	
	            }
	        })
	    }
	</script>
</body>
</html>