<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Old Book</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body>
	<%@include file="allcomponent/navbar.jsp"%>
	<c:if test="${not empty successMessage }">
		<div class="alert alert-success text-center">${successMessage}</div>
		<c:remove var="successMessage" />
	</c:if>
	<div class="container p-5">
		<table class="table table-striped">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				User u = (User) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
				List<BookDetails> list = dao.getBookByOld(email, "Old");
				for (BookDetails b : list) {
				%>
				<tr>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a href="deleteOldBook?email=<%=email%>&&bid=<%=b.getBookId() %>"
						class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>



			</tbody>
		</table>
	</div>


</body>
</html>