<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<s:url value="Vista/img/favicon.ico"/>" rel="shortcut icon" type="image/x-icon">
<link href="<s:url value="Vista/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all">
<link href="<s:url value="Vista/css/bootstrap-responsive.css"/>" rel="stylesheet" media="all">


<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<title>Canario!!!</title>
</head>
  <body>

<!-- <div class="container"> -->
 <div class="bienvenida">
            <div class="presentacion"><br>
                <br>
                <br>
                <br>
                <br>
                <h1>Bienvenido a Canario</h1>
                <p> Canario es un proyecto de la Catedra de Programacion 1 de la Facultad de Ingenieria de la Universidad de Mendoza</p>
            </div>
            <div class="login">
                <s:form class="well well-small" action="login" method="post">
                    <s:textfield name="mail" placeholder="Ingrese su email"/>
                     <s:password name="pass" placeholder="Ingrese su contraseña"/>
                     <s:submit class="btn btn-success" value="Logueate"/>
                </s:form>       
            </div>

            <div class="registro">
              
                <legend>Registrate!!!</legend>
                 
                <s:form action="register" method="post" class="well well-small">
	<s:textfield name="nombre" label="Name"  required="true" placeholder="Ingrese su nombre de usuario"/>
	<s:textfield name="mail" label="Email" required="true" placeholder="Ingrese su Email"/>
	<s:password name="pass" label="Password" required="true" placeholder="Ingrese su contraseña"/>
        <s:textfield name="date" label="fecha de nacimiento"/>
	
	
	<s:submit class="btn btn-danger" value="Register" align="center" />
                </s:form>
                
                
                </form>
            </div>        
        </div>
        	
 
 
 
  <!-- end .container </div>  -->
  <script type="text/javascript" src="<s:url value="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"/>"></script>
  <script src="<s:url value="Vista/js/bootstrap.js"/>"></script>

</body>
</html>

</html>
