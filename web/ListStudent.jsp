<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Students</title>
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
        <h1>Students</h1>

        <table id="personListTable" border="3" >
            <tr bgcolor="green">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>+/-</th>
                <th>Enrollments</th>
            </tr>
            <c:forEach var="student" begin="0" items="${personList}">
                <tr>
                    <td>${student.id}&nbsp;&nbsp;</td> 
                    <td>${student.firstName}&nbsp;&nbsp;</td> 
                    <td>${student.lastName}&nbsp;&nbsp;</td>
                    <td>${student.email}&nbsp;&nbsp;</td>
                    <td><a href="deleteStudent?id=${student.id}">Delete</a>&nbsp;&nbsp;</td>
                    <td><a href="viewStudentSubjects?id=${student.id}">View Subjects</a>&nbsp;&nbsp;</td>
                </tr> 

            </c:forEach>

        </table>
        <a href="CreateStudent.jsp"><strong>Create a Student Record</strong></a>
    </body>
</html>
