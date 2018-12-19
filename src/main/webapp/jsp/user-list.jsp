<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
<head>
	<title>用户信息列表</title>
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
                <div class="row-fluid header">
                    <!-- <h3>用户</h3> -->
                    <div class="span10 pull-right">
                        <!-- <input type="text" class="span5 search" placeholder="Type a user's name..." /> -->                    
                        <a href="<%=request.getContextPath() %>/jsp/new-user.jsp" class="btn-flat success pull-right">
                        	<span>&#43;</span>新建用户
                        </a>
                    </div>
                </div>
                <!-- Users table -->
                <div class="row-fluid table" id="app">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="span4 sortable">姓名</th>
                                <th class="span3 sortable"><span class="line"></span>密码</th>
                                <th class="span2 sortable"><span class="line"></span>性别</th>
                                <th class="span2 sortable"><span class="line"></span>时间</th>
                                <th class="span3 sortable align-right"><span class="line"></span>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                        <tr class="first" v-for="(item,index) in thisList">
                            <td>
                                <img src="<%=request.getContextPath() %>/static/html/img/contact-img.png" class="img-circle avatar hidden-phone" />
                                <a href="user-profile.html" class="name">{{item.username}}</a>
                                <span class="subtext">{{item.other}}</span>
                            </td>
                            <td>{{item.password}}</td>
                            <td>{{item.sex}}</td>
                            <td>{{item.createDate}}</td>
                            <td class="align-right"><a :name="item.id" onclick="delEvent(this.name)" href="#">删除</a></td>
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
	 	getUserList();
	    function getUserList(){
	        $.ajax({
	            url:hdnContextPath+'/user/selectAllUser.action',
	            type:'post',
	            dataType:'json',
	            error:function () {
	                alert("错误");
	            },
	            success:function (msg) {
	            	app.thisList = msg.list;
	            }
	        });
	    }
	    <!--删除-->
	    function delEvent(obj){
	    	alert(obj);
	        $.ajax({
	            url:hdnContextPath+"/user/delUser.action",
	            type:'post',
	            dataType:'json',
	            data:{
	                id:obj
	            },
	            error:function () {
	                alert("错误");
	            },
	            success:function (msg) {
	            	getUserList();
	            }
	        })
	    }
	</script>
</body>
</html>