
<%@page import="mvc.sms.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    form {
        width: 400px;
        padding: 35px;
        background: white;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
    }

    form::before {
        content: "Update Student";
        display: block;
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        color: #333;
        margin-bottom: 25px;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 5px;
        border: 1px solid #ccc;
        border-radius: 7px;
        font-size: 16px;
        outline: none;
        box-sizing: border-box;
    }

    input:focus {
        border-color: #667eea;
        box-shadow: 0 0 5px rgba(102, 126, 234, 0.4);
    }

    input[readonly] {
        background-color: #eeeeee;
        cursor: not-allowed;
    }

    input[type="submit"] {
        background-color: #28a745;
        color: white;
        border: none;
        font-weight: bold;
        font-size: 17px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #218838;
        transform: translateY(-2px);
        box-shadow: 0 5px 12px rgba(0, 0, 0, 0.2);
    }
</style>

</head>
<body>
	<%
    	Student student = (Student) request.getAttribute("students");
	%>
	<form action="update-student" method="post">
		<input type="number" value=<%=student.getId() %> name="id" readonly="readonly"><br><br>
		<input type="text" value=<%=student.getName() %> name="name"><br><br>
		<input type="email" value=<%=student.getEmail() %> name="email"><br><br>
		<input type="number" value=<%=student.getAge() %> name="age"><br><br>
		<input type="number" value=<%=student.getMarks() %> name="marks"><br><br>
		<input type="submit" value="update-student">

	</form>

</body>
</html>
