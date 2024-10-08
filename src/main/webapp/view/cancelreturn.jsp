<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Notification</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f0f4f8;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            font-size: 2.5em;
            color: #ff6f61; /* Coral color */
            text-align: center;
            margin-bottom: 20px;
            animation: pulse 2s infinite;
        }

        .back-link {
            display: inline-block;
            text-decoration: none;
            color: #007bff; /* Blue color */
            font-size: 18px;
            padding: 10px 20px;
            border: 2px solid #007bff;
            border-radius: 4px;
            background-color: #f8f9fa;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
            text-align: center;
            animation: blink 1.5s infinite;
        }

        .back-link:hover {
            background-color: #007bff;
            color: #fff;
            transform: scale(1.05);
            text-decoration: none;
        }

        @keyframes pulse {
            0% { color: #ff6f61; }
            50% { color: #ff3b2c; }
            100% { color: #ff6f61; }
        }

        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>${message}</h1>
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
