<%-- 
    Document   : subjectStudents
    Created on : 13-Nov-2019, 12:57:48
    Author     : nora
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Students enrolled in Subject</title>
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
        <h1>Students for ${currSubject.name}</h1>
        <h1>Subject Code: ${currSubject.id}</h1>

        <table id="personListTable" border="3">
            <tr bgcolor="green">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>+/-</th>
                <th>Enrollments</th>
                <th></th>
            </tr>
           
            <c:forEach  items="${subjectStudents}" var="student" >
                <tr>
                    <td>${student.id}&nbsp;&nbsp;</td> 
                    <td>${student.firstName}&nbsp;&nbsp;</td> 
                    <td>${student.lastName}&nbsp;&nbsp;</td>
                    <td>${student.email}&nbsp;&nbsp;</td>
                    <td><a href="deleteStudent?id=${student.id}">Delete</a>&nbsp;&nbsp;</td>
                    <td><a href="viewStudentSubjects?id=${student.id}">Subjects</a>&nbsp;&nbsp;</td>
                    <td><a href="removeStudentFromSubject?subjectID=${currSubject.id}&studentID=${student.id}">Remove</a>&nbsp;&nbsp;</td>
                </tr> 
                    
            </c:forEach>
                 <tr>
                     <td><a href="AddStudentPage?subjectID=${currSubject.id}"><strong>Add Student</strong></a></td>
                </tr>
        </table>
    </body>
</html>