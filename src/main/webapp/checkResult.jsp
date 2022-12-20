<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>

<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" >

<%
	String[] a = new String[100];
	for (int i=0;i<a.length; i++) a[i]="0";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdb","root","Y1012Jqkhkp");
	PreparedStatement preparedStatement = conn.prepareStatement("select party, count(party) as votecount from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
	
	int i=0;
	while (rs.next()) {
		if (rs.getString("party").equals("Aam Aadmi Party"))
			a[0] = rs.getString("votecount");
		if (rs.getString("party").equals("BJP"))
			a[1] = rs.getString("votecount");
		if (rs.getString("party").equals("BSP"))
			a[2] = rs.getString("votecount");
		if (rs.getString("party").equals("Congress"))
			a[3] = rs.getString("votecount");
		if (rs.getString("party").equals("CPI"))
			a[4] = rs.getString("votecount");
	}
%>

<title>Results</title>
</head>
<%@include file="adminNavbar.jsp" %>
<body>
<div class="form-container">
<div class="checkTable">
	<table>
		<tr>
			<th>Parties</th>
			<th>Names</th>
			<th>Votes</th>
		</tr>
		<tr>
			<td><img class="party-img" alt="aap logo" src="images/aap_logo.png"></td>
			<td>Aam Aadmi Party</td>
			<td><%=a[0] %></td>
		</tr>
		<tr>
			<td><img class="party-img" alt="BJP logo" src="images/BJP_Logo.png"></td>
			<td>bjp</td>
			<td><%=a[1] %></td>
		</tr>
		<tr>
			<td><img class="party-img" alt="bsp logo" src="images/BSP_Logo.png"></td>
			<td>bsp</td>
			<td><%=a[2] %></td>
		</tr>
		<tr>
			<td><img class="party-img" alt="congress logo" src="images/Indian_National_Congress.png"></td>
			<td>congress</td>
			<td><%=a[3] %></td>
		</tr>
		<tr>
			<td><img class="party-img" alt="cpi logo" src="images/CPIM_Logo.png"></td>
			<td>CPI</td>
			<td><%=a[4] %></td>
		</tr>
	</table>
</div>
</div>
</body>
</html>