<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" >
<title>Admin Login</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="form-container">
	<form action="adminLogin" method="post">
		<h3>Admin Login</h3>
		<label for="name" class="form-elements">Name :</label>
		<br>
		<input id="name" name="adminName" class="form-elements form-input" type="text" >
		<br>
		<label for="password" class="form-elements">Password :</label>
		<br>
		<input id="password" name="password" class="form-elements form-input" type="password" >
		<br>
		<button type="submit" class="form-elements form-button">Login</button>
	</form>
</div>
</body>
</html>