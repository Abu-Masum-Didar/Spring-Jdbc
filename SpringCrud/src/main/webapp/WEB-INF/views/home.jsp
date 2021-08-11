<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <%@page isELIgnored="false" %>
    <%@page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">
		
		<div class="row">
		
			<div class="col-md-12">
			
				<table class="table">
				  <thead class="bg-success">
				    <tr>
				      <th scope="col">Id</th>
				      <th scope="col">Product Name</th>
				      <th scope="col">Description</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  		<c:forEach items="${product }" var="p">
				  			<tr>
						      <th scope="row">techonly${p.id}</th>
						      <td>${p.name}</td>
						      <td>${ p.description}</td>
						      <td class="font-weight-bold"> &#x9F3 ${p.price}</td>
						      <td>
						      	<a href="delete/${p.id }"><i class="fas fa-trash text-danger"></i></a>
						      	<a href="update/${p.id }"><i class="fas fa-pencil-alt"></i></a>
						      </td>
						    </tr>
				  		
				  		</c:forEach>
						    
				  </tbody>
				</table>
				<div class="container text-center">
					<a href="addProduct" class="btn btn-outline-success"> Add Product</a>
				
				</div>
				
			
			
			</div>
		
		</div>
	
	</div>

<%-- <h1>Show  Your Product Details</h1>
<h1>${product }</h1> --%>
</body>
</html>