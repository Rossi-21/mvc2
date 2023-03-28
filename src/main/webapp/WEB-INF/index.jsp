<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>

	<title>Books</title>
</head>
<body>
	<div class="mx-auto" style="width:450px;" >
		<h1 class="mt-3 mb-3" style="color:pink;" ><c:out value="${book.title}"></c:out></h1>
		<p>Description:<c:out value="${book.description}"/></p>
		<p>Language:<c:out value="${book.language}"/></p>
		<p>Number of pages:<c:out value="${book.numberOfPages}"/></p>
							
	</div>


</body>
</html>