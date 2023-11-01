<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>

</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-2">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center text-primary p-1">Sell Old Book</h5>
						<c:if test="${not empty successMessage }">
						<p class="text-center text-success">${ successMessage}</p>
						<c:remove var="successMessage" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMessage }">
						<p class="text-center text-danger">${ failedMessage}</p>
						<c:remove var="failedMessage" scope="session"/>
						</c:if>

						<form action="addOldBook" method="post"
							enctype="multipart/form-data">
							<input type="hidden" value="${userobj.email }" name="user">
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
								<label for="exampleFormControlFile1">Upload Photo*</label> <input
									name="bookimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Sell</button>
					</div>
					</form>

				</div>

			</div>

		</div>
	</div>

	</div>

	<%@include file="allcomponent/footer.jsp"%>
</body>
</html>