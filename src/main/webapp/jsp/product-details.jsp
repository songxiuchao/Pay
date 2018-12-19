<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>单品展示</title>
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
                     <form action="<%=request.getContextPath() %>/alipay/createOrder.action" method="post">
				    	<input type="hidden" id="productId" name="productId" value="${p.id }" />
				        <table>
				        	<tr><td>产品编号: ${p.id }</td></tr>
				        	<tr><td>产品名称: ${p.name}</td></tr>
				        	<tr><td>产品价格: ${p.price }</td></tr>
				        	<tr><td>购买个数： <input id="buyCounts" name="buyCounts"/></td></tr>
				        	<tr>
				        		<td>
				        			<!-- <input type="submit" value="form提交，生成订单" />&nbsp;&nbsp;&nbsp;&nbsp;-->
				        			<input type="button" value="ajax提交，生成订单" onclick="createOrder()" />
				        		</td>
				        	</tr>
				        </table>
				    </form>
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
</body>
</html>
<script type="text/javascript">	
		var hdnContextPath = $("#hdnContextPath").val();
		function createOrder() {
			$.ajax({
		    	url:hdnContextPath +"/alipay/createOrder.action",
		    	type: "POST",
		    	data: {"productId": $("#productId").val(), "buyCounts": $("#buyCounts").val()},
		    	dataType: "json",
		    	error:function () {
	                alert("错误");
	            },
		    	success: function(data) {
		            if(data.status == 200 && data.msg == "OK") {
		            	debugger;
		            	// 提交订单成功后, 进入购买页面
		            	window.location.href = hdnContextPath + "/alipay/goPay.action?orderId=" + data.data;
		            } else {
		            	alert(data.msg);
		            	console.log(JSON.stringify(data));
		            }
		    	}
		    });
		}
</script>