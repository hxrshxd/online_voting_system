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
<title>Online Voting System</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="form-container">
	<form action="ContactUs" method="post">
		<h1 class="form-h1">Send Us Your Comments And We Will Reach Out To You.</h1>
		<label id="name" class="form-label">Name :</label>
		<input id="name" name="name" class="form-input" type="text" >
		<label id="number" class="form-label">Number :</label>
		<input id="number" name="number" class="form-input" type="text" >
		<label id="email" class="form-label">Email-ID :</label>
		<input id="email" name="email" class="form-input" type="text" >
		<label id="comment" class="form-label">Comments :</label>
		<input id="comment" name="comment" class="form-input" type="text" >
		<button type="submit" class="form-button">Submit</button>
	</form>
</div>
</body>
</html>