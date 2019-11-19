<%-- 
    Document   : CreateSubject
    Created on : 10-Nov-2019, 13:33:18
    Author     : nora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a new Subject record</title>
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
        <h1>Create a new Subject record</h1>
    </body>
    <form id="createSubjectForm" action="CreateSubject" method="post">
            <table>
                <tr><td>Subject Code:</td><td><input type="text" id = "id" name="id" /></td></tr>
                <tr><td>Name:</td><td><input type="text" id = "name" name="name" /></td></tr>
                <tr><td>Description:</td><td><input type="text" id = "description" name="description" /></td></tr>
            </table>
            <input type="submit" id="CreateRecord" value="Create Subject Record" />
        </form>
        <a href="ListSubjects"><strong>List of Subjects</strong></a>
</html>
