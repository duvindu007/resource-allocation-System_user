<%-- 
    Document   : instructorsection
    Created on : Apr 23, 2017, 4:12:12 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor='white'>
            <jsp:include page="nav.jsp"></jsp:include>
    <center><form action="instructorsection" method="post">
            <table border='1' cellpadding='5' cellspacing='0' width='100%' style="margin-top: 45px" >
<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
<td><h3>Welcome to Instructor Section Page</h3>
</td>
</table>

<p>
This is the page for Instructor Section.

</p> </center>

    <input type="radio" name="menuselection" value="instructorlab" style="margin-left:600px">Instructor Lab sessions <br>
<input type="radio" name="menuselection" value="instructorexam" style="margin-left:600px">Instructor Exam sessions <br>

<input type="submit" class="btn btn-danger" value="Submit" style="margin-left:630px">
<br><br>
<center>Click <a href="changeinspassword.jsp">here</a> to change password.</center>
</form> 

    </body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
