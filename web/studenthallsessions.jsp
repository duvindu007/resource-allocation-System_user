<%-- 
    Document   : studenthallsessions
    Created on : Apr 22, 2017, 3:02:15 PM
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
        <title>Student hall session</title>
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
            
            select se.Session_Number,se.BATCH_Code,se.Module_Code,se.date_,se.Duration,se.Start_Time,se.End_Time,hs.Hall_Code,hs.Lec_Code,hs.Note from SESSION_ se inner join hall_session hs on se.Session_ID = hs.Session_ID left join  UNDERGRADUATE u on se.BATCH_Code =u.BATCH_code  where u.NSBM_ID='${f2}'
        </sql:query>
        
         <div class="container">
             <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
    <center>
       
            <table border="1" width="100%">
                <caption><center><b class="b1">Student's hall session</b></center></caption>
              
                <tr>
                    <th>Session_ID</th>
                    <th>Batch_code</th>
                    <th>Module_code</th>
                    <th>Date</th>
                    <th>Duration</th>
                    <th>Start_time</th>
                     <th>End_time</th>
                     <th>Hall_Code</th>
                     <th>Lec_Code</th>
                     <th>Note</th>
                   
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
                        <td><c:out value="${row.Lec_Code}"/></td>
                        <td><c:out value="${row.Note}"/></td>
                    </tr>
                </c:forEach>
            </table>
        
             
        
        <center>Click <a href="studentlogin.jsp">here</a> to log out.</center>
    </center>
</div>
         </div>
    </body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
