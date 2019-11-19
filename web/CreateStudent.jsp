<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a new Student Record</title>
        <style>
            tr:nth-child(even) {
                background-color: #edebeb;
            }
            td, th {
                border: 1px solid #edebeb;
                text-align: left;
                padding: 8px;
            }
        </style>
    </head>
    <body>
        <h2><a href="EnrollmentManager.jsp">Home</a></h2>
        <h1>Create a new Student record</h1>
        <form id="createStudentForm" action="CreateStudent" method="post">
            <table>
                <tr><td>ID:</td><td><input type="text" id = "id" name="id" /></td></tr>
                <tr><td>First Name:</td><td><input type="text" id = "firstName" name="firstName" /></td></tr>
                <tr><td>Last Name:</td><td><input type="text" id = "lastName" name="lastName" /></td></tr>
                <tr><td>Email:</td><td><input type="text" id = "email" name="email" /></td></tr>
            </table>
            <input type="submit" id="CreateRecord" value="Create Student Record" />
        </form>
        <a href="ListStudent?redirect=ListStudent.jsp"><strong>List of Students</strong></a>
    </body>
</html>
