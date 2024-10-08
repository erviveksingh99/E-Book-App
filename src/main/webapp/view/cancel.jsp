<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Cancelled</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f8b500, #fceabb);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        h1 {
            font-size: 3em;
            color: #ff6f61;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            animation: blink 1.5s infinite;
        }

        @keyframes blink {
            0%, 100% {
                opacity: 1;
            }
            50% {
                opacity: 0.5;
            }
        }

        .message {
            font-size: 1.5em;
            margin-top: 20px;
            color: #ff0000;
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        a {
            display: inline-block;
            margin-top: 30px;
            padding: 15px 30px;
            background-color: #ff6f61;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        a:hover {
            background-color: #ff3d3d;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
   
    <h1>${bookingStatus}</h1>
    
    <p class="message">Sorry, your payment was not successful. Please try again!</p>
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
