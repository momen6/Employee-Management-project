<%--
  Created by IntelliJ IDEA.
  User: Mo'men
  Date: 9/8/2023
  Time: 3:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <form action="insertEmployee" method="post">

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="ename">Name</label> <input type="text"
                                                          class="form-control" id="ename" name="ename"
                                                          placeholder="Enter Name">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="jobTitle">Job Title</label> <input type="text"
                                                                        class="form-control" id="jobTitle" name="jobTitle"
                                                                        placeholder="Enter Job Title">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="department">Department</label> <input
                        type="text" class="form-control" id="department"
                        name="department" placeholder="Enter department">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="salary">Salary</label> <input type="number"
                                                              class="form-control" id="salary" name="salary"
                                                              placeholder="Enter Salary">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" id="address" name="address"
                              rows="5" placeholder="Enter Address"> </textarea>
                </div>
            </div>
        </div>

        <center>
        <a href="${pageContext.request.contextPath }/"
           class="btn btn-outline-dark"> Back </a>
        <button type="submit" class="btn btn-outline-primary">Submit</button>
        </center>
        <div class="spacer"></div>
    </form>

</div>
<div>
    <center>
        <form action="employeeReport" method="get">
            <button type="submit" class="btn btn-primary btn-lg">Show Employees</button>
        </form>
    </center>
</div>

</body>
</html>