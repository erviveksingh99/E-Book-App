<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>e-Book</title>
<style>
/* Basic reset */
body, h1, table, th, td {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	font-family: 'Arial', sans-serif;
	background: #f0f0f0;
	color: #333;
	overflow: auto;
	padding: 0;
}

/* Header styles */
h1 {
	color: #ff6347; /* Tomato color */
	text-align: center;
	padding: 20px;
	background: #fff;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

/* Table container styles */
.table-container {
	width: 80%;
	margin: auto;
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	position: relative;
}

/* Table styles */
table {
	width: 100%;
	border-collapse: collapse;
	background: #fff;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 2px solid #ddd;
}

th {
	background: #ff6347; /* Tomato color */
	color: #fff;
}

td {
	background: #fafafa;
}

tr:nth-child(even) td {
	background: #f9f9f9;
}

tr:hover td {
	background: #e0e0e0;
}

/* Button styles */
button {
	background-color: #4caf50; /* Green color */
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.2s ease;
}

button:hover {
	background-color: #45a049;
	transform: scale(1.05);
}

/* Floating bubbles animation */
@
keyframes bubble { 0% {
	transform: translateY(0);
	opacity: 1;
}

100


%
{
transform


:


translateY
(


-600px


)
;


opacity


:


0
;


}
}
.bubble {
	position: absolute;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.3);
	pointer-events: none;
	animation: bubble 10s infinite;
	opacity: 0;
}

.bubble:nth-of-type(1) {
	width: 100px;
	height: 100px;
	left: 10%;
	animation-duration: 8s;
}

.bubble:nth-of-type(2) {
	width: 120px;
	height: 120px;
	left: 30%;
	animation-duration: 10s;
}

.bubble:nth-of-type(3) {
	width: 80px;
	height: 80px;
	left: 50%;
	animation-duration: 12s;
}

.bubble:nth-of-type(4) {
	width: 90px;
	height: 90px;
	left: 70%;
	animation-duration: 9s;
}

.bubble:nth-of-type(5) {
	width: 110px;
	height: 110px;
	left: 90%;
	animation-duration: 11s;
}

/* Navigation Bar */
.nav-bar {
    position: absolute;
    top: 20px;
    width: 100%;
    display: flex;
    justify-content: space-between; /* Places the buttons on opposite sides */
    padding: 0 20px; /* Adds padding to the sides */
    box-sizing: border-box;
}

/* Return Book button styles */
.return-link {
    color: #ffffff;
    background-color: #4caf50; /* Green color */
    text-decoration: none;
    font-size: 19px;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.return-link:hover {
    background-color: #45a049;
    transform: scale(1.05);
}

/* My Orders button styles */
.order-link {
    color: #ffffff;
    background-color: #ff6347; /* Tomato color */
    text-decoration: none;
    font-size: 19px;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.order-link:hover {
    background-color: #e5533d;
    transform: scale(1.05);
}

</style>
</head>
<body>

	<!-- Navigation Bar -->
	<%-- <div class="nav-bar">
		<a href="${pageContext.request.contextPath}/order">My Orders</a>
	</div> --%>

	<div class="nav-bar">
		<a href="${pageContext.request.contextPath}/return"class="return-link">Return Book</a> 
		<a href="${pageContext.request.contextPath}/history" class="order-link">My Orders</a>
	</div>



	<div class="bubble"></div>
	<div class="bubble"></div>
	<div class="bubble"></div>
	<div class="bubble"></div>
	<div class="bubble"></div>

	<h1>e-Book</h1>

	<%-- <a href="${pageContext.request.contextPath}/return">Return</a> --%>


	<div class="table-container">
		<table>
			<tr>
				<th>Book Image</th>
				<th>Book ID</th>
				<th>Book Name</th>
				<th>Book Price</th>
				<th>Action</th>
			</tr>
			<c:forEach var="book" items="${books}">
				<tr>
					<td><a href="${book.tutorialUrl}" target="_blank"> <img
							src="${book.bookImageUrl}" alt="${book.bookName}" width="100" />
					</a></td>
					<td>${book.bookId}</td>
					<td>${book.bookName}</td>
					<td>${book.bookPrice}</td>
					<td>
						<form action="${pageContext.request.contextPath}/user"    
							method="post">
							<input type="hidden" name="bookId" value="${book.bookId}" /> <input
								type="hidden" name="bookName" value="${book.bookName}" /> <input
								type="hidden" name="bookPrice" value="${book.bookPrice}" />
							<button type="submit">Buy</button>
						</form>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>

			<!--form => buyBook -->

</body>
</html>
