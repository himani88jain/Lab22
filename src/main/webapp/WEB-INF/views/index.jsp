<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- core-tag library -->    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<div>
	
	<h1>Welcome to MVC's Pizza</h1>
		<p>Today date is :<fmt:formatDate value="${date}" pattern="EEEE, MMM dd,yyyy" /></p><br>
	
	<h3>Specialty Pizza</h3>

		<ul>
			<c:forEach items="${pizza}" var="top">

				<li><a href="<c:url value = "/${top}"/>"><c:out value="${top}"/> </a></li>

			</c:forEach>
		
		</ul>
	<h3>Custom Pizza</h3>
		<a href="build-pizza">Build your own!</a>
		
	<h3>Leave a review</h3>
	<a href="/review-form">Click here to leave a review.</a>
	
	
	
		<img src="pizza.jpg"/>
	
</div>

</body>
</html>