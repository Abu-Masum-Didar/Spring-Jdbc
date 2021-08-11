<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-4">
		
		<div class="row">
			
			<div class="col-md-6 offset-md-3">
				
				<form action="handle-product" method="post">
					<div class="form-group">
						
						<label for="name">Product Name</label>
	     			    <input type="text" 
	     			    	   id="name"
	     			    	   name="name" 
	     			    	   class="form-control" 
	     			    	   placeholder="Enter the product name">
						
					</div>
					<div class="form-group">
						
						<label for="description">Product Description</label>
	     			    <textarea type="text" 
	     			    	   id="description"
	     			    	   name="description" 
	     			    	   class="form-control" 
	     			    	   rows="5"
	     			    	   placeholder="Enter the product description" ></textarea>
						
					</div>
					<div class="form-group">
						
						<label for="price">Product Price</label>
	     			    <input type="text" 
	     			    	   id="price"
	     			    	   name="price" 
	     			    	   class="form-control" 
	     			    	   placeholder="Enter the product price">
						
					</div>
					<div class="container text-center">
						<a class="btn btn-outline-danger" href="${pageContext.request.contextPath }/home">Back</a>
						
						<button class="btn btn-outline-primary" >Add</button>
					
					</div>
					
				</form>
			
			</div>
		
		
		</div>
	
	
	</div>

</body>
</html>