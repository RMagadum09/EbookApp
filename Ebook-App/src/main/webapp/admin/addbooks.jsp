<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="navbar.jsp"%>
	
	
    <c:if test="${empty userobj }">
    <c:redirect url="../login.jsp"></c:redirect>
    </c:if>

	<div class="container text-center ">
		<div class="row">
			<div class="col-md-4 offset-md-4 ">
				<div class="card">
					<div class="card-body text-center">

						<h4 class="text-center text-primary">Add Books</h4>
						
						<c:if test="${not empty successMessage }">
						<p class="text-center text-success">${ successMessage}</p>
						<c:remove var="successMessage" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMessage }">
						<p class="text-center text-danger">${ failedMessage}</p>
						<c:remove var="failedMessage" scope="session"/>
						</c:if>
												
						<!-- Here we call the Books add Servlet and we mentioned enctype which will help us add binary data too -->
						<form action="../addbooks" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail">Book Name*</label> <input
									name="bookname" type="text" class="form-control"
									id="exampleInputEmail">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Author Name*</label> <input
									name="authorname" type="text" class="form-control"
									id="exampleInputEmail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword">
							</div>
							<div class="form-group">
								<label for="inputState">Book Categories*</label> <select
									id="inputState" name="booktype" class="form-control">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="bookStatus" class="form-control">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo*</label> <input
									name="bookimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
					</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 130px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>