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
	<form action="Vote" method="post">
		<label id="voterNumber" class="form-elements">Enter your voter ID :</label>
		<br>
		<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text" >
		<br>
		<label for="party" class="form-elements">Choose your party :</label>
		<br>
		<input type="radio" id="aap" name="party" value="Aam aadmi party">
		<label for="aap" ><img alt="aap part" class="party-img" src="">Aam Aadmi Party</label> 
		<br>
		<input type="radio" id="bjp" name="party" value="BJP">
		<label for="bjp" ><img alt="bjp" class="party-img" src="">bjp</label>
		<br>
		<input type="radio" id="congress" name="party" value="Congress">
		<label for="congress" ><img alt="congress" class="party-img" src="">congress</label>
		<br>
		<input type="radio" id="bsp" name="party" value="BSP">
		<label for="bsp" ><img alt="bsp" class="party-img" src="">bsp</label>
		<br>
		<input type="radio" id="cpi" name="party" value="CPI">
		<label for="cpi" ><img alt="cpr" class="party-img" src="">cpi</label>
		<br>
		<button type="submit" class="form-elements form-button">Submit</button>
	</form>
</div>
</body>
</html>