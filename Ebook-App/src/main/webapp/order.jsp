<%@page import="com.entity.BookOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderDaoImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order History</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<body style="background-color: #e6e5dc">
	<%@include file="allcomponent/navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>


	<div class="container p-1">
		<h3 class="text-center text-primary">Your Order Details</h3>
		<table class="table table-striped mt-3">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>
				<%
			User u = (User)session.getAttribute("userobj");
			BookOrderDaoImpl dao = new BookOrderDaoImpl(DBConnect.getCon());
			List<BookOrder> list = dao.getBook(u.getEmail());
			for(BookOrder b :list){%>

				<tr>
					<th scope="row"><%=b.getOrderId() %></th>
					<td><%=b.getUserName() %></td>
					<td><%=b.getBookName() %></td>
					<td><%= b.getAuthor()%></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentMode() %></td>
				</tr>


				<%}			
			%>

			</tbody>
		</table>
	</div>

</body>
</html>