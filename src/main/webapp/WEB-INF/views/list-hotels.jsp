<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
<br></br>
<br></br>

<form action="/list-by-city" method="post">
	
	<p>
	Choose Wisely
	</p>
				<div class="col-auto my-1">
			      <label class="mr-sm-2" for="inlineFormCustomSelect">City</label>
			      	<select id="city" name="city">
				        <option selected>Choose...</option>
				        <option value="Saline">Saline</option>
				        <option value="Ann Arbor">Ann Arbor</option>
				        <option value="Dexter">Dexter</option>
					</select>
				</div>
		<button type="submit" >Submit</button>
</form>
		
</body>
</html>