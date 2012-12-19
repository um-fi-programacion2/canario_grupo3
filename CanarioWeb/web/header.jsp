<!DOCTYPE html> 
<%@taglib uri="/struts-tags" prefix="s" %>
<script src="./js/jquery.js"></script>



<script src="./js/bootstrap-transition.js"></script>
    <script src="./js/bootstrap-alert.js"></script>
    <!--<script src="./js/bootstrap-modal.js"></script>-->
    <script src="./js/bootstrap-dropdown.js"></script>
    <!--<script src="./js/bootstrap-scrollspy.js"></script>-->
    <!--<script src="./js/bootstrap-tab.js"></script>-->
    <script src="./js/bootstrap-tooltip.js"></script>
    <script src="./js/bootstrap-popover.js"></script>
    <script src="./js/bootstrap-button.js"></script>
   <!-- <script src="./js/bootstrap-collapse.js"></script>-->
    <!--<script src="./js/bootstrap-carousel.js"></script>-->
    <script src="./js/bootstrap-select.js"></script>






<html lang="en">
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Canario Web - UM:FI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="./css/bootstrap.css" rel="stylesheet">
    <link href="./css/bootstrap-select.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
      <!-- Le  styles -->
    
 <!--   <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">   -->
   
    
     
    
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
 <!--    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet"> -->

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
                  <a href="#" class="brand"><img src="./img/logo.png" width="20"> CanarioWeb</a>
                
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  
                  <div class="nav-collapse collapse navbar-inverse-collapse">
                    <ul class="nav">
                      
                      <li><a href="<s:url action="home"/>"><i class="icon-white icon-home"></i>Home</a></li><li class="divider-vertical"></li>
                      <li><a href="<s:url action="config"/>"><i class="icon-white icon-user"></i>Configuración</a></li><li class="divider-vertical"></li>
                      <li><a href="<s:url action="api"/>"><i class="icon-white icon-wrench"></i>Api</a></li>
                      
                    </ul>
                        <s:form cssClass="navbar-search " method="post" action="busqueda" title="realiza una busqueda">
                            <s:textfield cssClass="search-query span3" name="buscate" id="buscate"></s:textfield>&nbsp;
                            <i class="icon-search icon-white"></i>
                         </s:form>   
                    <ul class="nav pull-right">
                      
                      <li class="divider-vertical"></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-white icon-off"></i><b class="caret"></b></a>
                        <ul class="dropdown-menu" style="background-color: #252525; color: #ffffff;">
                            <p class="active">Logeado como: </p><a href="<s:url action="logout"/>" class="navbar-link active">@<%= u.getNombre() %> <i class="icon-white icon-off"></i></a>
                        </ul>
                      </li>
                    </ul>
                  </div><!-- /.nav-collapse -->
               
              </div><!-- /navbar-inner -->
            </div>
      
     
    
       

    <div class="container-fluid">
        <div class="container">    
