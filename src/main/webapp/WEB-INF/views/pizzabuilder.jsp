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
<h1>Build Your Own Pizza</h1>
<div>

<form action="/pizza-builder-confirm">
			<!-- name attribute -->
			<label for="size">Size</label>
  			<select name="size">
   			 <option value="Small">Small</option>
    		<option value="Medium">Medium</option>
    		<option value="Large">Large</option>
    		<option value="Xlarge">XLarge</option>
 		 </select><br><br>
			<label>How many toppings?</label>
			<input type="number" name="no_of_toppings" min="0" max="10" step="1"/><br>
			<ul>
			<c:forEach items="${diffTopping}" var="top">

				<li><c:out value="${top}" /></li>

			</c:forEach>
			</ul>
		
			<input type="checkbox" name="gluten"  value="true"/>
			<input type="hidden" name="gluten" value="false" />
			<label>Gluten-Free-Crust?($2.00 extra)</label><br><br>
			<label>Special Instructions(Optional)</label><br><br>
			<textarea name="instructions" rows="4" cols="50"></textarea><br><br><br>
			
			<button type="submit">Calculate Price</button>
			<a href="/">Never Mind</a>
	
	</form>
	
</div>
</body>
</html>