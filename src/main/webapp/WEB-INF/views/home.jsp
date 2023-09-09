<%--
  Created by IntelliJ IDEA.
  User: Mo'men
  Date: 9/7/2023
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp"%>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
        }
        .spacer {
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Employee Management Project</h1>
    <div class="spacer"></div>
    <a href="addEmployee" class="btn btn-outline-primary">Get Started</a>
</div>
</body>