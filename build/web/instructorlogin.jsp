<%-- 
    Document   : instructorlogin
    Created on : Apr 20, 2017, 4:34:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Mycss/stylesheet1.css" type="text/css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="nav.jsp"></jsp:include>
        <div class="container">
            <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
                <center> <h3 class="he3" style="margin-top: -10px">Welcome to Instructors' login</h3></center>
                <%
	if( request.getAttribute("errorMsgs") != null){
		%>
		
                    
                        
                        <center> <%="Please correct the following errors!!!!" %></center>
                        
		
		<table  width="100%" >
                    <tr bgcolor="red"><td>
<% 
		java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
		for(String errorMsg: errorMsgs){	
%>

                    <center><font color="white"><%= errorMsg%></font></center>

<%		}
		
	}
%>
</td></tr>
</table>
                <form action="frontinstructorloginservlet" method="POST">
                    <table  border="0" cellspacing="2" cellpadding="5" align="center">
                       
                        <tbody>
                        
                            <tr>
                        
                                <td><label>Username:</label></td>
                                <td><input type="text" name="user1" value="" /></td>
                            </tr>
                        
                            <tr >
                                <td ><label style="margin-top: 10px">Password:</label></td>
                                <td ><input type="password" style="margin-top: 10px" name="pass1" value="" /></td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <center> <input type="submit" value="Login" class="btn btn-primary" style="margin-top: 5px;margin-left: 130px" /></center>
                </form>
            </div>
        </div>
       
    </body>
     <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
