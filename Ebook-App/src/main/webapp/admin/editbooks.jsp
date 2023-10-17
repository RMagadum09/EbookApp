<%@page import="com.entity.BookDetails"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
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

	<div class="container text-center ">
		<div class="row">
			<div class="col-md-4 offset-md-4 ">
				<div class="card">
					<div class="card-body text-center">

						<h4 class="text-center text-primary">Edit Books</h4>

						

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
						BookDetails b = dao.getBookById(id);
						%>


						<!-- Here we call the Books add Servlet and we mentioned enctype which will help us add binary data too -->
						<form action="../editbooks" method="post">
						<input type="hidden" name="id" value="<%=b.getBookId()%>">
						
						
						
							<div class="form-group">
								<label for="exampleInputEmail">Book Name*</label> <input
									name="bookname" type="text" class="form-control"
									id="exampleInputEmail" value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Author Name*</label> <input
									name="authorname" type="text" class="form-control"
									id="exampleInputEmail" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword" value="<%=b.getPrice()%>">
							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="bookStatus" class="form-control">
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									
									<%
									} else {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									}
									%>
								</select>
							</div>
							
							<button type="submit" class="btn btn-primary">Update</button>
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