<%--
  Created by IntelliJ IDEA.
  User: Mo'men
  Date: 9/8/2023
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp"%>
    <style>
        .spacer {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>


<div class="container mt-3">

    <h1>Add Employee Form</h1>
    <a href="addEmployee" class="btn btn-outline-primary"> Add Employee </a>
    <div class="spacer"></div>
    <div class="row">

        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Department</th>
                <th scope="col">Salary</th>
                <th scope="col">Address</th>
                <th scope="col">Job Title</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="emp" items="${employee}">
                <tr>
                    <td class="table-plus">${emp.id}</td>
                    <td>${emp.ename}</td>
                    <td>${emp.department}</td>
                    <td>${emp.salary}</td>
                    <td>${emp.address}</td>
                    <td>${emp.jobTitle}</td>
                    <td><a href="editEmployee/${emp.id}" class="btn btn-outline-dark">
                        Edit </a></td>
                    <td><a href="deleteEmployee/${emp.id}"
                           class="btn btn-outline-danger"> Delete </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
