<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style.css" >
<meta charset="UTF-8">
<title>Registre Voter</title>
</head>
<body>
<%@include file="adminNavbar.jsp" %>
<div class="form-container">
	<form action="RegisterUser" method="post">
		<label id="name" class="form-elements">Name :</label>
		<br>
		<input id="name" name="name" class="form-elements form-input" type="text" >
		<br>
		<label id="number" class="form-elements">Number :</label>
		<br>
		<input id="number" name="number" class="form-elements form-input" type="text" >
		<br>
		<label id="email" class="form-elements">Email-ID :</label>
		<br>
		<input id="email" name="email" class="form-elements form-input" type="text" >
		<br>
		<label id="voterNumber" class="form-elements">Voter ID number :</label>
		<br>
		<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text" >
		<br>
		<label id="address" class="form-elements">Address :</label>
		<br>
		<input id="address" name="address" class="form-elements form-input" type="text" >
		<br>
		<label id="dob" class="form-elements">Date Of Birth :</label>
		<br>
		<input id="dob" name="dob" class="form-elements form-input" type="text" >
		<br>
		<button type="submit" class="form-elements form-button">Submit</button>
	</form>
</div>
</body>
</html>