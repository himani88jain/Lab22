<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body class="review">
	<div>
	<h1>Leave a Review</h1>
	<form action="/review-confirmation">
			<!-- name attribute -->
			<label>Name</label>
			<input type="text" name="name" required  minlength="1" /><br><br>
			<label>Comment</label><br>
			<textarea name="comments" rows="4" cols="50" required minlength="5" /></textarea><br><br>
			<label >Rating</label><br>
			<input type="radio" name="rating" value="5" required />
			<label for="rate5">5(best)</label>
			<input type="radio" name="rating" value="4" required /><label for="rate4">4</label>
			<input type="radio" name="rating" value="3" required /><label for="rate3">3</label>
			<input type="radio" name="rating" value="2" required /><label for="rate2">2</label>
			<input type="radio" name="rating" value="1" required /><label for="rate1">1(worst)</label><br><br>
			
			<button type="submit">Submit</button>
			<a href="/">Never Mind</a>
			
	</form>	
	</div>
	

</body>
</html>