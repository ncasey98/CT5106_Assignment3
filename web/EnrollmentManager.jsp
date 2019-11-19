<%-- 
    Document   : EnrollmentManager
    Created on : 13-Nov-2019, 15:37:25
    Author     : nora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enrollment Manager</title>
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
        <h1>Simple Enrollment Manager</h1>
        <table width="400px">
            <tr>
                <th bgcolor="green">Options</th>
            </tr>
            <tr>
                <td><a href="ListStudent"><strong>List Students</strong></a></td>
            </tr>
            <tr>
                <td><a href="ListSubject"><strong>List Subjects</strong></a></td>
            </tr>
        </table>
    </body>
</html>
