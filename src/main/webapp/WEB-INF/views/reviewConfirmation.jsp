<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body class="review">
<div>
<h2>Thanks for the review!</h2>
	<p><b>Your name:</b> ${name}<br>
	   <b>Comment:</b> <c:out value="${comments}"/><br>
	   <b>Rating:</b> ${rating}</p><br><br>
	   
	   <a href="/">Back to Homepage</a>
</div>
</body>
</html>