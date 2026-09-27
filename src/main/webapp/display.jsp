
<%@page import="mvc.sms.model.Student"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>

<style>
    body {
        margin: 0;
        padding: 40px;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
        box-sizing: border-box;
    }

    table {
        width: 90%;
        margin: 30px auto;
        border-collapse: collapse;
        background-color: white;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
    }

    th {
        background-color: #343a40;
        color: white;
        padding: 15px;
        font-size: 16px;
    }

    td {
        padding: 13px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        color: #333;
    }

    tr:hover {
        background-color: #f2f2f2;
    }

    td a {
        text-decoration: none;
        font-weight: bold;
        padding: 7px 14px;
        border-radius: 5px;
        display: inline-block;
    }

    td a[href^="find-by-id"] {
        background-color: #007bff;
        color: white;
    }

    td a[href^="find-by-id"]:hover {
        background-color: #0056b3;
    }

    td a[href^="delete-by-id"] {
        background-color: #dc3545;
        color: white;
    }

    td a[href^="delete-by-id"]:hover {
        background-color: #b02a37;
    }

    h2 {
        text-align: center;
        margin-top: 30px;
    }

    h2 a {
        text-decoration: none;
        background-color: #28a745;
        color: white;
        padding: 12px 20px;
        border-radius: 7px;
        font-size: 16px;
        transition: 0.3s;
    }

    h2 a:hover {
        background-color: #218838;
        box-shadow: 0 5px 12px rgba(0, 0, 0, 0.2);
    }
</style>

</head>

<body>

<%
    List<Student> slist = (List<Student>) request.getAttribute("studentList");
%>

<table border="1">

    <tr>
        <th>StudentId</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Marks</th>
        <th>Update</th>
        <th>delete</th>
    </tr>

    <% for (Student s : slist) { %>

        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getAge() %></td>
            <td><%= s.getMarks() %></td>
            <td><a href="find-by-id?studentId=<%=s.getId()%>">update</a></td>
            <td><a href="delete-by-id?studentId=<%=s.getId()%>">delete</a></td>
        </tr>

    <% } %>

</table>

<h2><a href="index.jsp">go back to dashboard</a></h2>

</body>
</html>
