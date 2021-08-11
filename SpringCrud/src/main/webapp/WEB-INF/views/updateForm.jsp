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
				
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				
				  <input type="hidden" value="${product.id }" name="id" />	
					<div class="form-group">
						
						<label for="name">Update Product Name</label>
	     			    <input type="text" 
	     			    	   id="name"
	     			    	   name="name" 
	     			    	   class="form-control" 
	     			    	   placeholder="Enter the product name"
	     			    	   value="${product.name }">
						
					</div>
					<div class="form-group">
						
						<label for="description">Update Product Description</label>
	     			    <textarea type="text" 
	     			    	   id="description"
	     			    	   name="description" 
	     			    	   class="form-control" 
	     			    	   rows="5"
	     			    	   placeholder="Enter the product description" >${product.description }</textarea>
						
					</div>
					<div class="form-group">
						
						<label for="price">Update Product Price</label>
	     			    <input type="text" 
	     			    	   id="price"
	     			    	   name="price" 
	     			    	   class="form-control" 
	     			    	   placeholder="Enter the product price"
	     			    	   value="${product.price }">
						
					</div>
					<div class="container text-center">
						<a class="btn btn-outline-danger" href="${pageContext.request.contextPath }/home">Back</a>
						
						<button class="btn btn-outline-primary" >Update</button>
					
					</div>
					
				</form>
			
			</div>
		
		
		</div>
	
	
	</div>

</body>
</html>