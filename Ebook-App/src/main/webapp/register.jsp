<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!-- JSTL URI searched from google and added -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>
	<h3 class="text-center text-success p-3">Hi, Welcome Register
		Yourself</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						<c:if test="${not empty successMessage }">
							<p class="text-center text-success">${successMessage}</p>
							<c:remove var="successMessage" />
						</c:if>
						<c:if test="${not empty failureMessage }">
							<p class="text-center text-danger">${failureMessage}</p>
							<c:remove var="failureMessage" />
						</c:if>
						<c:if test="${not empty checkbox }">
							<p class="text-center text-danger">${checkbox}</p>
							<c:remove var="checkbox" />
						</c:if>


						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" name="name" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter Your Full Name ">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter email"> <small
									id="emailHelp" class="form-text text-muted"> We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="number" name="phonenumber" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter Phone Number">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="password" class="form-control"
									id="exampleInputPassword1" required="required"
									placeholder="Password">
							</div>
							<div class="form-check">
								<input type="checkbox" name="check" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">I agree to all terms and conditions</label>
							</div>
							<button type="submit" class="btn btn-primary">Register</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allcomponent/footer.jsp"%>
</body>
</html>