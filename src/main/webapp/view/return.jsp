<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Return Request</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            animation: fadeIn 2s ease-out;
        }

        h1 {
            color: #ff6f61; /* Coral color */
            text-align: center;
            margin-bottom: 20px;
            animation: pulse 1.5s infinite;
        }

        p.message {
            color: #390df3; /* Orange color */
            font-size: 14px;
            text-align: center;
            margin: 15px 0;
            animation: blink 1.5s infinite;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input:focus {
            border-color: #ff6f61;
            box-shadow: 0 0 5px rgba(255, 111, 97, 0.5);
            outline: none;
        }

        button {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
            margin: 5px;
        }

        button[type="submit"] {
            background-color: #ff6f61; /* Coral color */
            color: #fff;
        }

        button[type="submit"]:hover {
            background-color: #e65c50;
            transform: scale(1.05);
        }

        button[type="button"] {
            background-color: #007bff; /* Blue color */
            color: #fff;
        }

        button[type="button"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            text-decoration: none;
            color: #007bff; /* Blue color */
            transition: color 0.3s;
            animation: pulse 1.5s infinite;
        }

        .back-link:hover {
            color: #0056b3;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
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
    <div class="form-container">
        <h1>Return Request</h1>
        <p class="message">After cancellation, you will get the amount in your account within 48 hours.</p>
        <form action="${pageContext.request.contextPath}/bookReturn" method="post">
            <div>
                <label for="userName">User Name:</label>
                <input type="text" id="userName" name="userName" required>
            </div>
            <div>
                <label for="mobile">Mobile:</label>
                <input type="text" id="mobile" name="mobile" required>
            </div>
            <div>
                <label for="orderNum">Order Number:</label>
                <input type="text" id="orderNum" name="orderNum" required>
            </div>
            <div>
                <label for="upi">UPI:</label>
                <input type="text" id="upi" name="upi" required>
            </div>
            <div>
                <button type="submit">Submit</button>
                <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/cancelreturn'">Cancel Return</button>
            </div>
        </form>
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
