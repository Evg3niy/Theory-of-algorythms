<%-- 
    Document   : lab2
    Created on : 12 черв. 2021 г., 20:11:27
    Author     : Evgeniy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Results!</h1>
        
        <p><%=request.getAttribute("result")%></p>
        
        <div>
            <form action="lab2form.jsp" method="post">  
                <input type="submit" value="New x">
            </form> 
        </div>
        
        <div>
            <form action="index.jsp">          

                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>
