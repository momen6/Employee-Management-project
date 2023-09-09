<%--
  Created by IntelliJ IDEA.
  User: Mo'men
  Date: 9/8/2023
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp"%>
</head>
<body>


<div class="container mt-3">

    <h1>Edit Employee Form</h1>
    <form action="updateEmployee" method="post">

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="id">Id</label> <input type="text"
                                                      value="${employee.id}" class="form-control" id="id" name="id"
                                                      readonly="readonly">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="ename">Name</label> <input type="text"
                                                          value="${employee.ename }" class="form-control" id="ename"
                                                          name="ename" placeholder="Enter Name">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="jobTitle">Job Title</label> <input type="text"
                                                                        value="${employee.jobTitle }" class="form-control"
                                                                        id="jobTitle" name="jobTitle"
                                                                        placeholder="Enter Job Title">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="department">Department</label> <input
                        type="text" class="form-control" id="department"
                        value="${employee.department }" name="department"
                        placeholder="Enter department">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="salary">Salary</label> <input type="number"
                                                              value="${employee.salary }" class="form-control" id="salary"
                                                              name="salary" placeholder="Enter Salary">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" id="address" name="address"
                              rows="5" placeholder="Enter Address"> ${employee.address } </textarea>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>

</body>
</html>