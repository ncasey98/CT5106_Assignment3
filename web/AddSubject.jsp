<%-- 
    Document   : AddSubject
    Created on : 12-Nov-2019, 13:40:03
    Author     : nora
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add subject to student</title>
    </head>
    <body>
          <h2><a href="EnrollmentManager.jsp">Home</a></h2>
        <h1>Add  subjects to ${currStudent.id}&nbsp;${currStudent.firstName}&nbsp;${currStudent.lastName}</h1>
        
        <form id="addSubjectForm" action="AddSubjectToStudent" method="post">
            <select name="item">
                <c:forEach var="subject" items="${requestScope.subjectList}">
                    <option value="${subject.id}">${subject.id}&nbsp;${subject.name}</option>
            </c:forEach>
            </select>
            <input type="hidden" id="studentField" name="studentID" value="${currStudent.id}">
            <input type="submit" value="Add">
        </form>
    </body>
</html>
