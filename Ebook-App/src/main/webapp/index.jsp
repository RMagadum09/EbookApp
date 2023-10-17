<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>
<style type="text/css">
.back-img {
	background:url("img/book.jpg");
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
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>

<!-- End Recent Book -->

<hr>


<!-- Start New Book -->
	<div class="container">
		<h3 class="text-center ">New Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>

<!-- End New Book -->

<hr>

<!-- Start Old Book -->
	<div class="container">
		<h3 class="text-center ">Old Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Will Norton</p>
						<p>Categories:New</p>
						<div class="row text-center">
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">399</a>
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>

<!-- End Old Book -->

<%@include file="allcomponent/footer.jsp" %>




</body>
</html>