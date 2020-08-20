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
<body class="first">
<h1>Specialty Pizza:Anchovy Lover's</h1><br>
<p><b>Name:</b>
			<c:forEach items="${pizza}" var="top" begin="0" end = "0">
				<c:out value="${top.name}"/>

			</c:forEach>
	<br>
</p>
<p>
   <b>Price:</b>
			<c:forEach items="${pizza}" var="top" begin="0" end = "0">
				<fmt:formatNumber value="${top.price}" pattern=".00" />

			</c:forEach>
	<br>
 </p>
 <a href="/">Back to Homepage</a>


</body>
</html>