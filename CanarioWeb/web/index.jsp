<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="Vista/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="Vista/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="Vista/css/bootstrap-responsive.css" rel="stylesheet" media="all">


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
                <form class="well well-small" action="home.jsp" method="post">
                <input type="email" required name="email" placeholder="Ingrese su email">
                <input type="password" required name="pass" placeholder="Ingrese su contraseña">
            	<button type="submit" class="btn btn-success">Ingresar</button>
                </form>       
            </div>

            <div class="registro">
              
                <legend>Registrate!!!</legend>
                 
                <s:form action="register" method="post" class="well well-small">
	<s:textfield name="name" label="Name"  required="true" placeholder="Ingrese su nombre y apellido"/>
	<s:textfield name="emailId" label="Email" required="true" placeholder="Ingrese su Email"/>
	<s:password name="password" label="Password" required="true" placeholder="Ingrese su contraseña"/>
	<s:textfield name="cellNo" label="Cell No." />
	<s:textfield name="website" label="Homepage" />
	<s:textfield name="birthDate" label="Birthdate" />
	<s:submit class="btn btn-danger" value="Register" align="center" />
                </s:form>
                
                
                </form>
            </div>        
        </div>
        	
 
 
 
  <!-- end .container </div>  -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="Vista/js/bootstrap.js"></script>

</body>
</html>

</html>
