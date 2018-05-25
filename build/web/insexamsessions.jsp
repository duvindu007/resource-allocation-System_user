<%-- 
    Document   : insexamsessions
    Created on : Apr 23, 2017, 4:34:29 PM
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
            
            select ex.Exam_type,ex.BATCH_code, ex.Module_Code,ex.date_,ex.Exam_Duration,ex.Start_Time_,ex.End_Time_,ex.Hall_Code  from EXAM ex inner join INSTRUCTOR i  on ex.instructor_id = i.NSBM_ID where i.NSBM_ID ='${f1}'
        </sql:query>
        <div class="container">
             <div class="jumbotron" style="margin-top: 30px; border-color: #245580" >
        
    <center>
       
            <table border="1" width="100%">
                <caption><center><b class="b1">Instructor's exam session</b></center></caption>
              
                <tr>
                    <th>Exam_type</th>
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
                        
                        <td><c:out value="${row.Exam_type}"/></td>
                        <td><c:out value="${row.BATCH_Code}"/></td>
                        <td><c:out value="${row.Module_code}"/></td>
                        <td><c:out value="${row.date_}"/></td>
                        <td><c:out value="${row.Exam_Duration}"/></td>
                        <td><c:out value="${row.Start_Time_}"/></td>
                        <td><c:out value="${row.End_Time_}"/></td>
                        <td><c:out value="${row.Hall_Code}"/></td>
                    </tr>
                </c:forEach>
            </table></center>
             </div>
        </div>
    </body>
    <script type="text/javascript" src="Myjs/scripthigh.js"></script>
</html>
