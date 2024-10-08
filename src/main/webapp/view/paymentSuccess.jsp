<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Success</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #00c6ff, #0072ff);
	/* Blue gradient background */
	color: white;
	text-align: center;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

h1 {
	font-size: 48px;
	margin-top: 100px;
	text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
	animation: blink 2s infinite;
}

h2 {
	font-size: 48px;
	margin-top: 100px;
	text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
	animation: blink 2s infinite;
}

a {
	display: inline-block;
	margin-top: 50px;
	padding: 15px 30px;
	background-color: #4CAF50; /* Green button */
	color: white;
	text-decoration: none;
	font-size: 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

a:hover {
	background-color: #45a049;
}

.confetti {
	position: absolute;
	width: 10px;
	height: 10px;
	background: rgba(255, 255, 255, 0.8);
	animation: confettiFall 3s infinite;
}

@
keyframes confettiFall { 0% {
	transform: translateY(0) rotate(0deg);
	opacity: 1;
}

100
%
{
transform
:
translateY(
800px
)
rotate(
360deg
);
opacity
:
0;
}
}
@
keyframes blink { 0%, 50%, 100% {
	opacity: 1;
}

25
%
,
75
%
{
opacity
:
0;
}
}

/* Create multiple confetti elements */
.confetti:nth-child(1) {
	left: 10%;
	animation-duration: 2s;
	animation-delay: 0s;
}

.confetti:nth-child(2) {
	left: 20%;
	animation-duration: 3s;
	animation-delay: 1s;
}

.confetti:nth-child(3) {
	left: 30%;
	animation-duration: 2.5s;
	animation-delay: 0.5s;
}

.confetti:nth-child(4) {
	left: 40%;
	animation-duration: 3.5s;
	animation-delay: 1.5s;
}

.confetti:nth-child(5) {
	left: 50%;
	animation-duration: 3s;
	animation-delay: 0.8s;
}

.confetti:nth-child(6) {
	left: 60%;
	animation-duration: 2.2s;
	animation-delay: 1.2s;
}

.confetti:nth-child(7) {
	left: 70%;
	animation-duration: 2.8s;
	animation-delay: 0.3s;
}

.confetti:nth-child(8) {
	left: 80%;
	animation-duration: 3.2s;
	animation-delay: 0.6s;
}

.confetti:nth-child(9) {
	left: 90%;
	animation-duration: 2.7s;
	animation-delay: 1.4s;
}

.confetti:nth-child(10) {
	left: 95%;
	animation-duration: 3.1s;
	animation-delay: 0.9s;
}
</style>
</head>
<body>
    <!-- Display booking status -->
    <h2>${bookingStatus}</h2>

    <!-- Confetti animation -->
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>

    <!-- Form to redirect to return request form -->
   

    <!-- Link to navigate back to the books page -->
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

</body>
</html>

