<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Purchase</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #ff7e5f, #feb47b);
	/* Gradient background */
	color: #333;
	margin: 0;
	padding: 0;
}

.container {
	background-color: #ffffff;
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	text-align: center;
}

h1 {
	color: #ff7e5f; /* Title color */
	margin-bottom: 20px;
}

p {
	font-size: 18px;
	color: #555;
}

.qr-code {
	margin-top: 20px;
}

.qr-code img {
	width: 200px; /* Adjust based on your QR code size */
	height: auto;
}

.button-container {
	margin-top: 20px;
}

button {
	padding: 12px 20px;
	border: none;
	border-radius: 6px;
	color: white;
	font-size: 16px;
	cursor: pointer;
	margin: 10px;
	transition: background-color 0.3s, transform 0.3s;
}

/* Pay Now Button */
button.pay-now {
	background-color: #28a745; /* Green */
}

button.pay-now:hover {
	background-color: #218838; /* Darker green */
}

/* Cancel Button */
button.cancel {
	background-color: #dc3545; /* Red */
}

button.cancel:hover {
	background-color: #c82333; /* Darker red */
}

.note {
	margin-top: 20px;
	font-size: 16px;
	color: #4CAF50;
	font-weight: bold;
}

.back-link {
	display: inline-block;
	margin-top: 20px;
	text-decoration: none;
	color: #fff;
	background-color: #ff7e5f;
	padding: 12px 25px;
	border-radius: 5px;
	transition: background-color 0.3s, transform 0.3s;
}

.back-link:hover {
	background-color: #feb47b;
	transform: translateY(-2px); /* Slight lift effect on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h1>Book Purchase</h1>
		<p>
			<strong>Book ID:</strong> ${bookId}
		</p>

		<p>
			<strong>Book Name:</strong> ${bookName}
		</p>
		
		<p>
			<strong>Book Price:</strong> ${bookPrice}
		</p>

		<!-- QR Code Section -->

		<div class="qr-code">
			<img
				src="https://imgv3.fotor.com/images/side/support-all-upi-pay-apps_2023-09-01-025325_odwc.png"
				alt="QR Code">
		</div>


		<!-- Payment Buttons -->
		<div class="button-container">
			<form action="${pageContext.request.contextPath}/paymentSuccess"
				method="post">
				<input type="hidden" name="amount" value="${bookId}">
				<input type="hidden" name="bookName" value="${bookName}">
				<input type="hidden" name="bookPrice" value="${bookPrice}">
				 <input type="hidden" name="status" value="${status}">
				<button type="submit" class="pay-now">Pay Now</button>
			</form>

			<form action="${pageContext.request.contextPath}/cancel" method="get">
				<button type="submit" class="cancel">Cancel</button>
			</form>
		</div>

		<!-- Note Section -->
		<p class="note">After payment verification, your order will be
			dispatched within 24 hours.</p>

		<a href="${pageContext.request.contextPath}/books" 
   style="
       display: inline-block;
       text-align: center;
       font-size: 16px;
       text-decoration: none;
       color: #fff; /* White text color */
       padding: 10px 20px;
       border: 2px solid transparent;
       border-radius: 4px;
       background: linear-gradient(45deg, #ff6f61, #ff3b2c); /* Gradient background */
       box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow effect */
       font-weight: bold;
       transition: background 0.3s, color 0.3s, box-shadow 0.3s, transform 0.3s;
       animation: glow 1.5s infinite alternate;
   "
   onmouseover="this.style.background='linear-gradient(45deg, #ff3b2c, #ff6f61)'; this.style.color='#fff'; this.style.boxShadow='0 6px 12px rgba(0, 0, 0, 0.3)'; this.style.transform='scale(1.1)';"
   onmouseout="this.style.background='linear-gradient(45deg, #ff6f61, #ff3b2c)'; this.style.color='#fff'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.2)'; this.style.transform='scale(1)';">
    Back to Books
</a>

	</div>
</body>
</html>
</html>
