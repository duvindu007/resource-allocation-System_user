<%-- 
    Document   : lechallsessions
    Created on : Apr 23, 2017, 3:23:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer hall sessions</title>
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
            
            select se.Session_Number,se.BATCH_Code,se.Module_Code,se.date_,se.Duration,se.Start_Time,se.End_Time,hs.Hall_Code  from SESSION_ se inner join hall_session hs on se.Session_ID = hs.Session_ID left join LECTURER l on hs.Lec_Code = l.Lec_Code where l.username='${f}'
        </sql:query>
        
        
    <center>
       <div class="container">
           <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
            <table border="1" width="100%" style="margin-top: -30px;" >
                <caption><center><b class="b1">Lecturer's hall session</b></center></caption>
              
                <tr>
                    <th>Session ID</th>
                    <th>Batch_code</th>
                    <th>Module_code</th>
                    <th>Date</th>
                    <th>Duration</th>
                    <th>Start_time</th>
                     <th>End_time</th>
                     <th>Hall_Code</th>
                     
                   
                </tr>
                <c:forEach var="row" items="${result.rows}">
          
                    
                    <tr>                        
                        
                        <td><c:out value="${row.Session_Number}"/></td>
                        <td><c:out value="${row.BATCH_Code}"/></td>
                        <td><c:out value="${row.Module_code}"/></td>
                        <td><c:out value="${row.date_}"/></td>
                        <td><c:out value="${row.Duration}"/></td>
                        <td><c:out value="${row.Start_Time}"/></td>
                        <td><c:out value="${row.End_Time}"/></td>
                        <td><c:out value="${row.Hall_code}"/></td>
                        
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
