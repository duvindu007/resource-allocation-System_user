<%-- 
    Document   : changepassword
    Created on : Mar 19, 2017, 6:14:14 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Mycss/stylesheet1.css" type="text/css" rel="stylesheet">
        <link href="Bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    </head>
    <body >
        <jsp:include page="nav.jsp"></jsp:include>
       <div class="container">
            <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
                <center> <h3  style="margin-top: -10px">Change Lecturer's password</h3></center>
  <%              if(request.getAttribute("errorMsgs") != null){
		%>
		
                <center><%="Please correct the following errors!!!!" %></center>
		
		<table  width="100%" >
                    <tr bgcolor="red"><td>
<% 
		java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
		for(String errorMsg: errorMsgs){	
%>
<font color="white" style="margin-left: 400px"> <%= errorMsg%><br></font>	
<%		}
		
		
		
	}
%>
                        </td></tr></table>
                <form action="changepassloginservlet" method="POST">
                    <center> <table border="0" cellspacing="2" cellpadding="5">
                        
                        <tbody>
                            <tr>
                                <td><label>Username:</label></td>
                                <td><label>${f}</label></td>
                            </tr>
                            <tr>
                                <td><label>Previous password:</label></td>
                                <td><input type="password" name="ppass" value="" /></td>
                            </tr>
                            <tr>
                                <td><label>New password:</label></td>
                                <td><input type="password" name="npass" value="" /></td>
                            </tr>
                            <tr>
                                <td><label>Confirm password:</label></td>
                                <td><input type="password" name="cpass" value="" /></td>
                            </tr>
                        </tbody>
                        </table></center>
                    <center> <input type="submit" value="Submit" class="btn btn-primary" style="margin-top: 5px;margin-left: 130px" /></center>
                </form>
            </div>
       </div>
    </body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
