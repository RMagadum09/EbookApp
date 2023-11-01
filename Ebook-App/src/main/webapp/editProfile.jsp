<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-primary">Edit Profile</h3>


						<c:if test="${not empty failedMessage}">
							<h5 class="text-center text-danger">${failedMessage}</h5>
							<c:remove var="failedMessage" scope="session" />
						</c:if>

						<c:if test="${not empty successMessage}">
							<h5 class="text-center text-success">${successMessage}</h5>
							<c:remove var="successMessage" scope="session" />
						</c:if>


						<form action="updateProfile" method="post">
							<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" name="name" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter Your Full Name"
									value="${userobj.name }">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter email"
									value="${userobj.email }"> <small id="emailHelp"
									class="form-text text-muted"> We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="number" name="phonenumber" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" placeholder="Enter Phone Number"
									value="${userobj.phoneNumber }">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="password" class="form-control"
									id="exampleInputPassword1" required="required"
									placeholder="Password">
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>


					</div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>