<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #e6dcdc
}
</style>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Store</h2>
	</div>

	<!-- Start Recent Book -->
	<div class="container">
		<h3 class="text-center ">Recent Book</h3>
		<div class="row">


			<%
			BookDaoImpl dao2 = new BookDaoImpl(DBConnect.getCon());
			List<BookDetails> list2 = dao2.getRecentBooks();
			for (BookDetails b : list2) {
			%>


			<div class="col-md-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<%
						if (b.getBookCategory().equals("Old")) {
						%>

						<div class="row ">
							<a href="viewDetails.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View
								Details</a> <a class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>

						</div>


						<%
						} else {
						%>


						<div class="row ">
							<a href="checkOut.jsp" class="btn btn-danger btn-sm ml-5"><i
								class="fa-solid fa-cart-plus"></i>Add to Cart</a> <a
								href="viewDetails.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View
								Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>

						</div>


						<%
						}
						%>

					</div>
				</div>
			</div>

			<%
			}
			%>

		</div>
		<div class="text-center mt-2">
			<a href="allRecentBook.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>
	</div>

	<!-- End Recent Book -->

	<hr>


	<!-- Start New Book -->
	<div class="container">
		<h3 class="text-center ">New Book</h3>
		<div class="row">

			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
			List<BookDetails> list = dao.getNewBooks();
			for (BookDetails b : list) {
			%>
			<div class="col-md-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row text-center">
							<a href="checkOut.jsp" class="btn btn-danger btn-sm ml-5"><i
								class="fa-solid fa-cart-plus"></i>Add to Cart</a> <a
								href="viewDetails.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View
								Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>

						</div>
					</div>
				</div>
			</div>


			<%
			}
			%>

		</div>
		<div class="text-center mt-2">
			<a href="allNewBook.jsp" class="btn btn-danger btn-sm  text-white ">View
				All</a>
		</div>
	</div>


	<!-- End New Book -->

	<hr>

	<!-- Start Old Book -->
	<div class="container">
		<h3 class="text-center ">Old Book</h3>
		<div class="row">


			<%
			BookDaoImpl dao3 = new BookDaoImpl(DBConnect.getCon());
			List<BookDetails> list3 = dao3.getOldBooks();
			for (BookDetails b : list3) {
			%>
			<div class="col-md-4">
			<div class="card crd-ho">
				<div class="card-body text-center">
					<img alt="" src="book/<%=b.getPhotoName()%>"
						style="width: 150px; height: 200px" class="img-thumblin">
					<p><%=b.getBookName()%></p>
					<p><%=b.getAuthor()%></p>
					<p>
						Categories:<%=b.getBookCategory()%></p>
					<div class="row text-center">
						 <a
							href="viewDetails.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View
							Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>

					</div>
				</div>
			</div>
		</div>


		<%
		}
		%>

	</div>
	<div class="text-center mt-2">
		<a href="allOldBook.jsp" class="btn btn-danger btn-sm text-white">View
			All</a>
	</div>
	</div>
	</div>


	<!-- End Old Book -->

	<%@include file="allcomponent/footer.jsp"%>




</body>
</html>