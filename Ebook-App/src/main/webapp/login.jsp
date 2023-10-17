<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4">
				<div class="card ">
					<div class="card-body ">
						<h4 class="text-center text-success">Login</h4>
						
						<c:if test="${not empty failedMessage}">
						<h5 class="text-center text-danger">${failedMessage}</h5>
						<c:remove var="failedMessage" scope="session"/>
						</c:if>
						
						<c:if test="${not empty successMessage}">
						<h5 class="text-center text-success">${successMessage}</h5>
						<c:remove var="successMessage" scope="session"/>
						</c:if>
						
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password"
									placeholder="Password">
							</div>
							<div class="text-center">
							<button type="submit" class="btn btn-primary">Login</button><br>
							<a href="register.jsp" >Create Account</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>