<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old Book</title>
<%@include file="allcomponent/allCss.jsp"%>
<style type="text/css">


.crd-ho:hover {
	background-color: #e6dcdc
}
</style>
</head>
<body>
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">

			<%
			BookDaoImpl dao3 = new BookDaoImpl(DBConnect.getCon());
			List<BookDetails> list3 = dao3.getAllOldBooks();
			for (BookDetails b : list3) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row text-center">
							<a href="viewDetails.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>

						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>

	</div>

</body>
</html>