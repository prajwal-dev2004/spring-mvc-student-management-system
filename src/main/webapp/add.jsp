<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        width: 420px;
        background: white;
        padding: 35px;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    h1 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        font-size: 26px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    input {
        width: 100%;
        padding: 13px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        outline: none;
    }

    input:focus {
        border-color: #667eea;
        box-shadow: 0 0 5px rgba(102, 126, 234, 0.4);
    }

    input[type="submit"] {
        background: #667eea;
        color: white;
        border: none;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 5px;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #5568d9;
        transform: translateY(-2px);
    }
</style>

</head>

<body>

    <div class="form-container">

        <h1>Enter Student Details</h1>

        <form action="save-student" method="post">

            <input type="text"
                   placeholder="Enter the name"
                   name="name">

            <input type="email"
                   placeholder="Enter the email"
                   name="email">

            <input type="number"
                   placeholder="Enter the age"
                   name="age">

            <input type="number"
                   placeholder="Enter the marks"
                   name="marks">

            <input type="submit" value="ADD STUDENT">

        </form>

    </div>

</body>
</html>