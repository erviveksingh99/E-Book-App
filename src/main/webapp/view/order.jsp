<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Order History</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #e9ecef;
            color: #333;
            padding: 20px;
            margin: 0;
        }

        h1 {
            color: #ff6f61; /* Coral color */
            text-align: center;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-out;
        }

        .table-container {
            width: 80%;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            animation: slideIn 1s ease-out;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s, color 0.3s;
        }

        th {
            background-color: #ff6f61; /* Coral color */
            color: #fff;
            font-weight: bold;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f2f2f2;
        }

        tr:hover td {
            background-color: #e0e0e0;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 30px 0;
        }

        .back-link a {
            color: #007bff;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            padding: 12px 20px;
            border: 2px solid #007bff;
            border-radius: 5px;
            background-color: #f8f9fa;
            transition: background-color 0.3s, color 0.3s, border-color 0.3s;
            animation: pulse 2s infinite;
        }

        .back-link a:hover {
            background-color: #007bff;
            color: #fff;
            border-color: #007bff;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>

<h1>Order History</h1>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Book ID</th>
                <th>Book Name</th>
                <th>Book Price</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="${orderHistories}">
                <tr>
                    <td>${order.confirmOrderId}</td>
                    <td>${order.bookId}</td>
                    <td>${order.bookName}</td>
                    <td>${order.bookPrice}</td>
                    <td>${order.status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<div class="back-link">
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
