<!DOCTYPE html> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">

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
  <% Usuarios u = PerfilDao.traerPerfil(); %>  

  
  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="http://twitter.github.com/bootstrap/examples/fluid.html#">CanarioWeb</a>
         
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logeado como <a href="<s:url action="logout"/>" class="navbar-link">@<%= u.getNombre() %> <i class="icon-white icon-off"></i></a>
            </p>
        
            <ul class="nav">
                <li class="active"><a href="/home.jsp"><i class="icon-home"></i>Home</a></li>
              <li><a href="/perfil.jsp"><i class="icon-white icon-user"></i>Configuración</a></li>
              <li><a href="/api.jsp"><i class="icon-white icon-wrench"></i>Api</a></li>
                  
            </ul>
           
    
                
            
          </div><!--/.nav-collapse -->
            
        </div>
         
      </div>
    </div>

    <div class="container-fluid">