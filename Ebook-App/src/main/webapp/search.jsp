<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Book</title>
<%@include file="allcomponent/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #e6dcdc
}
</style>
</head>
<body>
	<%@include file="allcomponent/navbar.jsp"%>

	<%
	User u = (User) session.getAttribute("userobj");
	%>


	<div class="container-fluid">
		<div class="row p-3">

			<%
			String ch = request.getParameter("ch");
			BookDaoImpl dao1 = new BookDaoImpl(DBConnect.getCon());
			List<BookDetails> list1 = dao1.getBookBySearch(ch);
			for (BookDetails b : list1) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>

							Categories:<%=b.getBookCategory()%></p>
						<div class="row text-center">
							<a href="viewDetails.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						Categories:<%=b.getBookCategory()%></p>
						<div class="row text-center">
						
						<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm ">Add to
								Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ">Add to Cart</a>

							<%
							}
							%>
						
						
						
						
							 <a
								href="" class="btn btn-success btn-sm ">View Details</a> <a
								href="" class="btn btn-danger btn-sm "><%=b.getPrice()%></a>

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
	</div>

</body>
</html>