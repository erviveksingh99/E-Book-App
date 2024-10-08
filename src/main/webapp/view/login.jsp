<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
/* Background Animation */
@keyframes gradientBG {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

@keyframes slide {
    0% { transform: translateX(100%); }
    100% { transform: translateX(-100%); }
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    height: 100vh;
    background: linear-gradient(270deg, #ff7e5f, #feb47b, #86a8e7, #7f7fd5);
    background-size: 800% 800%;
    animation: gradientBG 15s ease infinite;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}

/* Running Text Animation for the Left Side */
.running-text {
    position: absolute;
    top: 50%;
    left: 0;
    width: 150px;
    transform: translateY(-50%);
    color: white;
    font-size: 18px;
    font-weight: bold;
    white-space: nowrap;
    overflow: hidden;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
}

.running-text div {
    display: inline-block;
    padding-left: 100%;
    animation: slide 10s linear infinite;
}

/* Container Styling */
.container {
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    padding: 30px;
    width: 350px;
    animation: fadeIn 1s ease-in-out;
    position: relative;
    z-index: 2;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}

h2 {
    text-align: center;
    color: #4CAF50;
    font-size: 24px;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #333;
}

input[type="text"], input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 6px;
    transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

input[type="text"]:focus, input[type="password"]:focus {
    border-color: #007bff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.6);
}

button {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease-in-out, transform 0.2s;
}

button:hover {
    background-color: #45a049;
    transform: translateY(-2px);
}

.error {
    color: red;
    text-align: center;
    margin-bottom: 15px;
    font-weight: bold;
}

.footer {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
    color: #777;
}

.footer a {
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease-in-out;
}

.footer a:hover {
    color: #0056b3;
}

.e-book-header {
    text-align: center;
    margin-bottom: 20px;
}

.e-book-logo {
    width: 100px;
    vertical-align: middle;
    margin-right: 10px;
}

.e-book-description {
    font-size: 14px;
    color: #666;
    margin-top: 10px;
    text-align: justify;
}

.forget-password {
    display: block;
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease-in-out;
}

.forget-password:hover {
    color: #0056b3;
}

/* Navigation Bar on the Top Left */
.navbar {
    position: absolute;
    top: 10px;
    left: 10px;
    display: flex;
    gap: 15px;
    z-index: 1;
}

.navbar a {
    color: white;
    text-decoration: none;
    display: flex;
    align-items: center;
    transition: color 0.3s ease-in-out;
}

.navbar img {
    vertical-align: middle;
    margin-right: 5px;
}

/* Book Images Container */
.book-images {
    position: absolute;
    top: 50%;
    right: 10px;
    width: 300px;
    height: 300px;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    transform: translateY(-50%);
    z-index: 1;
}

.book-images img {
    width: 150px;
    height: auto;
    margin: 0 10px;
    animation: slide 10s linear infinite;
}

</style>
</head>
<body>

    <!-- Running Text Animation on the Left Side -->
    <div class="running-text">
        <div>Welcome to the Future of Reading! Discover, Explore, Enjoy!</div>
    </div>
    
    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/newUser">New User</a>
        <a href="${pageContext.request.contextPath}/privacy">Privacy</a>
        <a href="${pageContext.request.contextPath}/contact">Contact Us</a>
        <a href="https://www.facebook.com" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook" width="16"> Facebook
        </a>
        <a href="https://www.x.com" target="_blank">
            <img src="https://img.freepik.com/free-vector/new-2023-twitter-logo-x-icon-design_1017-45418.jpg?size=626&ext=jpg" alt="Twitter" width="16"> Twitter
        </a>
        <!-- <a href="https://www.youtube.com" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/4/42/YouTube_icon_%282013-2017%29.png" alt="YouTube" width="16"> YouTube
        </a> -->
    </div>
    
    <!-- Book Images Animation -->
    <div class="book-images">
        <img src="https://www.javacodegeeks.com/wp-content/uploads/2016/03/Spring-Data_book.png" alt="Book 1">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQevskM5tq1sD4ROXuIBnotMAbp5khMnL9Bvw&s" alt="Book 2">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl-EVD9etU_1JxL_AlTZ5ys16BNBJ-PYhiBw&s" alt="Book 3">
    </div>
    
    <div class="container">
        <!-- e-Book Header -->
        <div class="e-book-header">
            <img src="https://seeklogo.com/images/E/ebook-logo-E12CDE7E58-seeklogo.com.png" alt="e-Book Logo" class="e-book-logo">
            <h2>Welcome to e-Book Portal</h2>
        </div>
    
        <!-- e-Book Description -->
        <div class="e-book-description">
            Discover the convenience of accessing a vast collection of e-Books from the comfort of your home. Whether you're into fiction, non-fiction, or academic books, our e-Book portal offers something for everyone. Save time, enjoy flexibility, and dive into your favorite reads anytime, anywhere!
        </div>
    
        <h2>Login</h2>
    
        <form action="${pageContext.request.contextPath}/login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
    
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
    
            <button type="submit">Login</button>
    
            <!-- Forget Password Link -->
            <a href="${pageContext.request.contextPath}/forgotPassword" class="forget-password">Forgot Password?</a>
        </form>
    
        <!-- Display error message if it exists -->
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </div>
    
    </body>
    
</html>
