<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Onling Shopping</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

    
<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
</head>
<body style="background-color:powderblue;">

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">SellNBye</a>
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/show-products">Products</a></li>
					<li><a href="/addProduct">Add Products</a></li>
				</ul>
			</div>
		
		</div>
	</div> 

<c:choose>
<c:when test="${mode=='MODE_HOME' }">

		<div class="jumbotron text-center">
			<h1>SellNBye</h1>
			<h2>ONLINE SHOPPING</h2>
		</div>

</c:when>

<c:when test="${mode=='MODE_ADDPRODUCT' }">
	<div class="container text-center">
				<h3>Add New Product</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-product">
				<!--  					
					<input type="hidden" name="id" value="${product.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${product.id }" />
						</div>
					</div>
					
					-->	
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${product.name }" required />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${product.address }" required/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Product Details </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="details"
								value="${product.details }" required/>
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Add Product" />
					</div>
				</form>
			</div>
			</c:when>
			
			<c:when test="${mode=='ALL_PRODUCTS' }">
			
			<div class="container text-center" id="tasksDiv">
				<h3>All Products</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Address</th>
								<th>Product Details</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="product" items="${products }">
								<tr>
									<td>${product.id}</td>
									<td>${product.name}</td>
									<td>${product.address}</td>
									<td>${product.details}</td>
									<td><a href="/delete-product?id=${product.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-product?id=${product.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
						
					</table>
				</div>
			</div>
			
			</c:when>
			
			<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update Product</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-product">
					<input type="hidden" name="id" value="${product.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${product.name }" required/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${product.address }" required/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Product Details</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="details"
								value="${product.details }" required/>
						</div>
					</div>
			
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>	
			</c:choose>
	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>