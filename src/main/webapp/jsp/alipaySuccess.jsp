<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<html>
    <h2>支付成功页面</h2>
    <body>
        <h1 style="color: green;">购买成功</h1>
        <table>
        	<tr><td>订单编号: ${out_trade_no }</td></tr>
        	<tr><td>支付宝交易号: ${trade_no }</td></tr>
        	<tr><td>实付金额: ${total_amount }</td></tr>
        	<tr><td>购买产品：${productName }</td></tr>
        </table>
    </body>
    <h3><a href="<%=request.getContextPath() %>/jsp/main.jsp">跳转主页面</a></h3>   
</html>


