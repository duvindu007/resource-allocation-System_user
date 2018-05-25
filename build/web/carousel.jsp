<%-- 
    Document   : carousel
    Created on : Mar 19, 2017, 3:46:01 PM
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
        <script type=text/javascript src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    </head>
    <body bg-color="red">
         <div id="myCarousel" class="carousel slide">
       <ul class ="carousel-indicators">
           <li data-target ="#myCarousel" data-slide-to ="0" class="active"></li>
            <li data-target ="#myCarousel" data-slide-to ="1" ></li>
             <li data-target ="#myCarousel" data-slide-to ="2" ></li>
       </ul>
       <div class="carousel-inner">
           <div class="item active">
               
               <center>  <img src="Images/lap & book.jpg" alt="lap&book" class="img-responsive"   ></center>
               
               <div class="carousel-caption" >
                   <h1><a href="studentlogin.jsp" style="text-decoration: none;color: #ffffff;"> Students</a></h1>
               </div>
       </div>
       
           <div class="item ">
               <center> <img src="Images/lap.jpg" alt="lap" class="img-responsive"  ></center>
           <div class="carousel-caption">
                   <h1><a href="login.jsp" style="text-decoration: none;color: #ffffff">Lecturers</a></h1>
               </div>
       </div>
      
           <div class="item">
               <center> <img src="Images/tab.jpg" alt="tab" class="img-responsive"  ></center>
           <div class="carousel-caption">
               <h1><a href="instructorlogin.jsp" style="text-decoration: none;color: #ffffff">Instructors</a></h1>
               </div>
       </div>
   </div>
   </div>
        <a class ="carousel-control left" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
        <a class ="carousel-control right" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
    </body>
    <script src="Bootstrap/js/jquery.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</html>
