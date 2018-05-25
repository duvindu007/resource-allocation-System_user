<%-- 
    Document   : nav
    Created on : Mar 19, 2017, 11:02:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <script type=text/javascript src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
        <!--<script type="text/javascript" src="scripthigh.js"></script>-->
    </head>
    <body>
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="index.jsp">
            <img alt="Brand" src="Images/green.jpg" style="margin-top: -45px;">
        </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li ><a href="index.jsp">Home</a></li>
          <li><a href="sportsclubs.jsp">Sports clubs at NSBM</a></li>
          <li><a href="facultiesatnsbm.jsp">Faculties at NSBM</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Clubs & societies <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="activitybased.jsp">Activity based clubs</a></li>
              <li><a href="religoussocieties.jsp">Religous societies</a></li>
              <li><a href="internationalclubs.jsp">International clubs</a></li>
           
          </ul>
        </li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
          <li><a href="aboutus.jsp">About us</a></li>
          <li><a href="contactus.jsp">Contact us</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    </body>
    <script src="Bootstrap/js/jquery.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</html>

