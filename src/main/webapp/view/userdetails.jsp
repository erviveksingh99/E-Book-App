<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 0 auto;
            margin-bottom: 20px;
        }

        h2 {
            color: #ff7e5f;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 10px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            text-align: center;
            font-weight: bold;
            background: linear-gradient(45deg, #ff6f61, #ff3b2c);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            animation: glow 1.5s infinite alternate;
        }

        button:hover {
            background: linear-gradient(45deg, #ff3b2c, #ff6f61);
            color: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            transform: scale(1.1);
        }

        .form-note {
            text-align: center;
            margin-top: 20px;
            color: #0a0bf6;
            font-size: 14px;
        }

        .back-link {
            display: block;
            text-align: center;
            font-size: 16px;
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            border: 2px solid transparent;
            border-radius: 4px;
            background: linear-gradient(45deg, #ff6f61, #ff3b2c);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            font-weight: bold;
            transition: background 0.3s, color 0.3s, box-shadow 0.3s, transform 0.3s;
            animation: glow 1.5s infinite alternate;
            margin-bottom: 20px;
        }

        .back-link:hover {
            background: linear-gradient(45deg, #ff3b2c, #ff6f61);
            color: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Enter Your Details</h2>
        <form action="${pageContext.request.contextPath}/buyBook" method="post">
            <input type="hidden" name="userId" value="${userId}">

            <!-- Hidden fields for book information -->
            <input type="hidden" name="bookId" value="${bookId}">
            <input type="hidden" name="bookPrice" value="${bookPrice}">
            <input type="hidden" name="bookName" value="${bookName}">

            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required>

            <label for="mobileNum">Mobile Number:</label>
            <input type="text" id="mobileNum" name="mobileNum" required>

            <label for="address1">Address Line 1:</label>
            <input type="text" id="address1" name="address1" required>

            <label for="address2">Address Line 2:</label>
            <input type="text" id="address2" name="address2">

            <label for="state">State:</label>
            <input type="text" id="state" name="state" required>

            <label for="pincode">Pincode:</label>
            <input type="text" id="pincode" name="pincode" required>

            <label for="district">District:</label>
            <input type="text" id="district" name="district" required>

            <button type="submit">Submit</button>
            <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/cancelreturn'">Cancel Return</button>
        </form>
        <div class="form-note">
            Please ensure all required fields are filled out correctly before submitting.
        </div>
        
        <a href="${pageContext.request.contextPath}/books" class="back-link">
            Back to Books
        </a>
    </div>
</body>

</html>
