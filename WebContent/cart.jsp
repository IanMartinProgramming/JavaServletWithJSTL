<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
	text-align: center;
}
th {
	font-family: "helvetica", sans-serif;
	font-size: 20px;
	color: white;
	background-color: black;
}
td {
	font-family: "helvetica", sans-serif;
	background-color: darkgrey;
}
</style>
<meta charset="ISO-8859-1">
<title>Bill of Sale</title>
</head>
<body>
	<c:set var="total" value="${0}"/>
	<table>
	<tr><th>Phone</th><th>Price</th></tr>
		<c:forEach var="item" items="${shoppingList}">
			<c:set var="total" value="${total + item.price}"/>
			<tr><td>${item.name}</td><td>$${item.price}</td></tr>
		</c:forEach>
		<tr><td>Total:</td>
		<td>$${total}</td>
	</table>
	<a href="purchase.html">Back</a>
</body>
</html>