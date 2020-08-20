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
<body class="buildPizza">
<h1>Your Pizza</h1>
<p><b>Size:</b> ${size}<br>
   <b>Toppings:</b> ${no_of_toppings}<br>
   <b>Gluten-free Crust:</b> ${g}<br>
   <b>Specialty Instructions:</b> 
   <c:out value="${instructions}"/><br>
   <b>Price:</b> 
   
   			<fmt:formatNumber value="${price}" pattern=".00" /><br>
   			
   			<c:if test = "${price > 15}">
   			<c:out value="Because your order meets the $15.00 minimum,you get Free Delivery!!"/>
   			</c:if>
   			<br><br>
   
   <a href="/build-pizza">Build another pizza </a> &nbsp;&nbsp;
   <a href="/">Back to Homepage</a>
</body>
</html>