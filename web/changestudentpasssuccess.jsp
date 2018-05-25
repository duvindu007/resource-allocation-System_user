<%-- 
    Document   : changestudentpasssuccess
    Created on : Apr 25, 2017, 6:53:07 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="nav.jsp"></jsp:include>
         <br>
         <br>
        ${f2}, your attempt to change password was successfull!
         Click <a href="studentlogin.jsp">here</a> to login.
    </body>
</html>
