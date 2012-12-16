<!DOCTYPE html> 
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Canario Web - UM:FI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon"
      <!-- Le  styles -->
  <!-- -->   <link href="./css/bootstrap.css" rel="stylesheet"> 
   <!-- <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet"> -->
   
    
     
    
<style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 8px;
      }
      .sidebar-nav {
        padding: 5px 0;
      }
    </style>
    <link href="./css/bootstrap-responsive.css" rel="stylesheet">
   <!-- <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet"> -->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
  
    

    
    
    </head>

  <%@page import="dao.PerfilDao"%>
  <%@page import="model.Usuarios"%>
  <%@page import="dao.relacionesDao"%>
  <% Usuarios u = PerfilDao.traerPerfil(); %>  
  <% Usuarios publico = PerfilDao.traerPerfilPublico(); %>  

  
  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          
         <a class="brand" href="#"><img src="./img/logo.png" width="20"> CanarioWeb</a>
         
          
          <div class="nav-collapse collapse">
            
            <p class="navbar-text pull-right">
              Logeado como <a href="<s:url action="logout"/>" class="navbar-link">@<%= u.getNombre() %> <i class="icon-white icon-off"></i></a>
            </p>
        
            <ul class="nav">
                <li class="active"><a href="home.jsp"><i class="icon-home"></i>Home</a></li>
              <li><a href="<s:url action="config"/>"><i class="icon-white icon-user"></i>Configuración</a></li>
              <li><a href="<s:url action="api"/>"><i class="icon-white icon-wrench"></i>Api</a></li>
                  
            </ul>
           
              <s:form cssClass="navbar-search" method="post" action="busqueda">
                  <s:textfield cssClass="search-query span3" name="buscate"/>
                  <i class="icon-search icon-white"></i>
                  </s:form>   
     
          </div><!--/.nav-collapse -->
               
        </div>
         
      </div>
    </div>

    <div class="container-fluid">
        <div class="container">