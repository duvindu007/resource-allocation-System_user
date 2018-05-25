<%-- 
    Document   : notice
    Created on : Apr 26, 2017, 7:26:48 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Mycss/stylesheet1.css" type="text/css" rel="stylesheet">
         <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
        <jsp:include page="nav.jsp"></jsp:include>
         <sql:setDataSource var="dbsource" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=Ras"                           
                           user="sa"  password="123"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            
            select NOTICE.Author,NOTICE.Notice_Details,NOTICE.Lec_Code from NOTICE,Lecturer where NOTICE.Lec_Code=Lecturer.Lec_Code and Lecturer.Username='${f}'	
        </sql:query>
        
        
    <center>
       <div class="container">
           <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
            <table border="1" width="100%" style="margin-top: -30px;" >
                <caption><center><b class="b1">Notices</b></center></caption>
              
                <tr>
                    <th>Author</th>
                    <th>Notice Details</th>
                    <th>Lecturer code</th>
                  
                     
                   
                </tr>
                <c:forEach var="row" items="${result.rows}">
          
                    
                    <tr>                        
                        
                        <td><c:out value="${row.Author}"/></td>
                        <td><c:out value="${row.Notice_Details}"/></td>
                        <td><c:out value="${row.Lec_Code}"/></td>
                        
                        
                    </tr>
                </c:forEach>
            </table>
       </div>
       </div>
        <center>Click <a href="login.jsp">here</a> to log out.</center>
        
    </center>
    </body>
     <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
