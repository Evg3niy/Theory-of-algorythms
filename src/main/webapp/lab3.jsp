<%-- 
    Document   : lab3
    Created on : 4 ????. 2021 ?., 17:25:15
    Author     : Evgeniy
--%>

<%@page import="fit.knu.ist.ta2.lab3.Lab3"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab3 lab3 = new Lab3();%>
         <% lab3.InitArray(50); %>
         <% lab3.InitArrFib(50); %>
        <p> Numbers: <%= lab3.DisplayArray()%></p>
        <p> Sum: <%= lab3.CountSum(50)%></p>
    </body>
 </html>