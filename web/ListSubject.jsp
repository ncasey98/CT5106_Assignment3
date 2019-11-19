<%-- 
    Document   : ListSubject
    Created on : 10-Nov-2019, 13:33:36
    Author     : nora
--%>

<%@page contentType="text/html"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
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
        <h1>Subjects</h1>

        <table id="subjectListTable" border="3">
            <tr bgcolor="green">
                <th>Subject Code</th>
                <th>Name</th>
                <th>Description</th>
                <th>+/-</th>
                 <th>Enrollments</th>
            </tr>
            <c:forEach var="subject" begin="0" items="${requestScope.subjectList}">
                <tr>
                    <td>${subject.id}&nbsp;&nbsp;</td> 
                    <td>${subject.name}&nbsp;&nbsp;</td> 
                    <td>${subject.description}&nbsp;&nbsp;</td>
                    <td><a href="deleteSubject?id=${subject.id}">Delete</a>&nbsp;&nbsp;</td>
                    <td><a href="viewSubjectStudents?id=${subject.id}">Students</a>&nbsp;&nbsp;</td>
                </tr> 

            </c:forEach>

        </table>
        <a href="CreateSubject.jsp"><strong>Create a Subject Record</strong></a>
    </body>
</html>

