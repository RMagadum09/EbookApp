<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
<%@include file="allcomponent/navbar.jsp"%>
<div class="container text-center mt-3">
<i class="fas fa-check-circle fa-5x text-success"></i>
<h1>Thank You</h1>
<h2>Order Placed Successfully</h2>
<h5>Within 7 days your order will be delivered In your Address</h5>
<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
<a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
</div>

</body>
</html>