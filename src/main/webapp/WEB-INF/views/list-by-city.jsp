<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Options</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
<br></br>
<h1>Available Hotels</h1>
			<table class="table">
		<tbody>
			<thead>
				<tr>
					<th>Hotel</th><th>City</th><th>Price</th><th>Book It!</th>
				</tr>
			</thead>
				<c:forEach var="hotel" items="${hotels}">
				<tr>							
					<td>${hotel.name}</td>
					<td>${hotel.city}</td>
					
					<td>$ ${hotel.pricePerNight}</td>
					<td>
						<a onclick="return confirm('Are you sure you want to book this hotel?')" href="/list-hotels" class="btn btn-light btn-sm">Book Stay</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<form method="get" action="/list-hotels">
    <button type="submit">Back</button>
</form>

</body>
</html>