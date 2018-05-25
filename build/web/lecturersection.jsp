<%-- 
    Document   : lecturersection
    Created on : Apr 23, 2017, 3:02:12 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       <body >
            <jsp:include page="nav.jsp"></jsp:include>
 

<form action="lecturersection" method="post">
<table border='1' cellpadding='5' cellspacing='0' width='100%' style="margin-top: 45px">
<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
<td><h3>Welcome to Lecturer Section Page</h3>
</td>
</table>

<p>
<center>This is the page for Lecturer Section.</center>

</p> 

<input type="radio" name="menuselection" value="lechallsessions" style="margin-left:600px">Lecturer Hall sessions <br>
<input type="radio" name="menuselection" value="notice" style="margin-left:600px">Notices <br>

<input type="submit" class="btn btn-danger" value="Submit" style="margin-left:630px">
<br><br>
<center>Click <a href="changepassword.jsp">here</a> to change password.</center>
</form> 
 
    </body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
