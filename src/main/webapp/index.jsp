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
<title>Insert title here</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
	<form action="voterLogin" method="post">
		<h1 class="form-h1">Enter Voting Number</h1>
		<label for="voterNumber" class="form-label">
			<b>Voter ID :</b>
		</label>
		<input name="voterNumber" class="form-input" id="voterNumber" type="text" />
		<button type="submit" class="form-button">Login</button>
		<a href="adminLogin.jsp" class="index-a">Admin Login</a>
	</form>
</div>
</body>
</html>