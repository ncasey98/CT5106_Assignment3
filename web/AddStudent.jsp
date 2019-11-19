<%-- 
    Document   : AddStudent
    Created on : 12-Nov-2019, 13:45:07
    Author     : nora
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add student to subject</title>
    </head>
    <body>
        <h2><a href="EnrollmentManager.jsp">Home</a></h2>
        <h1>Select Student to add to ${currSubject.id}:&nbsp;${currSubject.name}</h1>
        
        <form id="addStudentForm" action="AddStudentToSubject" method="post">
            <select name="item">
                <c:forEach var="student" items="${requestScope.personList}">
                    <option value="${student.id}">${student.firstName}&nbsp;${student.lastName}</option>
            </c:forEach>
            </select>
            <input type="hidden" id="subjectField" name="subjectID" value="${currSubject.id}">
            <input type="submit" value="Add">
        </form>
    </body>
</html>
