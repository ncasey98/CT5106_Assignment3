<%-- 
    Document   : studentSubjects
    Created on : 13-Nov-2019, 13:22:41
    Author     : nora
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of subjects that student is enrolled in</title>
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
        <h1>Subjects for ${currStudent.firstName}&nbsp;${currStudent.lastName}</h1>
        <h1>ID: ${currStudent.id}</h1>

        <table id="personListTable" border="3">
            <tr bgcolor="green">
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>+/-</th>
                <th>Enrollments</th>
                <th></th>
            </tr>
           
            <c:forEach  items="${studentSubjects}" var="subject" >
                <tr>
                    <td>${subject.id}&nbsp;&nbsp;</td> 
                    <td>${subject.name}&nbsp;&nbsp;</td> 
                    <td>${subject.description}&nbsp;&nbsp;</td>
                    <td><a href="deleteSubject?id=${subject.id}">Delete</a>&nbsp;&nbsp;</td>
                    <td><a href="viewSubjectStudents?id=${subject.id}">Students</a>&nbsp;&nbsp;</td>
                    <td><a href="removeSubjectFromStudent?subjectID=${subject.id}&studentID=${currStudent.id}">Remove</a>&nbsp;&nbsp;</td>
                </tr> 
                    
            </c:forEach>
                 <tr>
                     <td><a href="AddSubjectPage?studentID=${currStudent.id}"><strong>Add Subject</strong></a></td>
                </tr>
        </table>
    </body>
</html>
