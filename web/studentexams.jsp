<%-- 
    Document   : studentexams
    Created on : Apr 23, 2017, 2:30:09 PM
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
        <title>JSP Page</title>
        <link href="Mycss/stylesheet1.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="nav.jsp"></jsp:include>
         
         <sql:setDataSource var="dbsource" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=Ras"                           
                           user="sa"  password="123"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            
            select  ex.Exam_type,ex.BATCH_code, ex.Module_Code,ex.date_,ex.Exam_Duration,ex.Start_Time_,ex.End_Time_,ex.Hall_Code,ex.instructor_id   from EXAM ex  inner join BATCH b on ex.BATCH_code = b.BATCH_code left join UNDERGRADUATE u on b.BATCH_code= u.BATCH_code left join STUDENT s on u.NSBM_ID=s.NSBM_ID  where s.NSBM_ID ='${f2}'

        </sql:query>
        
        <div class="container">
            <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
    <center>
       
            <table border="1" width="100%">
                <caption><center><b class="b1">Student's exam session</b></center></caption>
              
                <tr>
                    <th>Exam_type</th>
                    <th>Batch_code</th>
                    <th>Module_code</th>
                    <th>Date</th>
                    <th>Duration</th>
                    <th>Start_time</th>
                     <th>End_time</th>
                     <th>Hall_Code</th>
                     <th>Intructor_ID</th>
                     
                </tr>
                <c:forEach var="row" items="${result.rows}">
          
                    
                    <tr>                        
                        
                        <td><c:out value="${row.Exam_type}"/></td>
                        <td><c:out value="${row.BATCH_Code}"/></td>
                        <td><c:out value="${row.Module_code}"/></td>
                        <td><c:out value="${row.date_}"/></td>
                        <td><c:out value="${row.Exam_Duration}"/></td>
                        <td><c:out value="${row.Start_Time_}"/></td>
                        <td><c:out value="${row.End_Time_}"/></td>
                        <td><c:out value="${row.Hall_Code}"/></td>
                        <td><c:out value="${row.instructor_id}"/></td>
                        
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
