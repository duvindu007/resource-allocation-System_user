<%-- 
    Document   : studentsection
    Created on : Apr 22, 2017, 2:34:30 PM
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
        <center><form action="studentsection" method="post">
<table border='1' cellpadding='5' cellspacing='0' width='100%' style="margin-top: 45px">
<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
<td><h3>Welcome to Student Section Page</h3>
</td>
</table>

<p>
This is the page for Student Section.

</p> 
</center>
        <input type="radio" name="menuselection" value="hallsessions" style="margin-left:600px ">Hall sessions <br>
<input type="radio" name="menuselection" value="labsessions" style="margin-left:600px ">Lab sessions  <br>
<input type="radio" name="menuselection" value="exams" style="margin-left:600px ">Exams  <br>


<input type="submit" class="btn btn-danger" value="Submit" style="margin-left:630px ">
Click <a href="changestudentpass.jsp">here</a>to change password

</form> 
</body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
