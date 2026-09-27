
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .dashboard {
        width: 450px;
        background: white;
        padding: 40px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
    }

    .dashboard h1 {
        color: #333;
        margin-bottom: 35px;
        font-size: 28px;
    }

    .menu {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .menu a {
        display: block;
        text-decoration: none;
        padding: 15px;
        border-radius: 8px;
        font-size: 18px;
        font-weight: bold;
        color: white;
        transition: 0.3s;
    }

    .add-btn {
        background: #28a745;
    }

    .display-btn {
        background: #007bff;
    }

    .menu a:hover {
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    .add-btn:hover {
        background: #218838;
    }

    .display-btn:hover {
        background: #0056b3;
    }

    .footer {
        margin-top: 25px;
        color: #777;
        font-size: 14px;
    }
</style>

</head>

<body>

    <div class="dashboard">

        <h1>Welcome to Student Dashboard</h1>

        <div class="menu">

            <a href="add.jsp" class="add-btn">
                ➕ Add Student
            </a>

            <a href="display-all" class="display-btn">
                📋 Display All Students
            </a>

        </div>

        <div class="footer">
            Student Management System
        </div>

    </div>

</body>
</html>