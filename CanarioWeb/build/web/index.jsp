<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Proyecto CANARIO</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="La red social de 140 caracteres">
    <meta name="author" content="Grupo1 UNIVERSIDAD DE MENDOZA">

    <!-- Le styles -->
    <link href="./css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="./img/favicon.ico" type="image/x-icon" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


  </head>

  <body>
      
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
          <div class="container-fluid" >
              <div class="span4"></div>
              
          <a class="brand" href="#"><img src="./img/logo.png" width="20"> CanarioWeb</a>
          
          <div class="span8">
          <div class="nav-collapse collapse">
            
              <s:form cssClass="navbar-form pull-right" action="login" method="post">
                 <s:textfield cssClass="span2" name="mail" placeholder="Ingrese su email"/>
                     <s:password cssClass="span2" name="pass" placeholder="Ingrese su contraseña"/>
                     <s:submit cssClass="btn" value="Logueate"/>
            </s:form>
          </div><!--/.nav-collapse -->
        </div>
              </div>
      </div>
    </div>
         
   <div class="container">

   <div class="hero-unit">
           <h2>BIENVENIDO!</h2>
        <p>Completa los datos y podrás empezar a utilizar canario.</p>
      <div class="row">
        <div class="span6"> 
        <s:form action="register" id="registerHere" method="post">
                <legend>Formulario de registro:</legend>
                <label>Nombre Completo</label>
                    <s:textfield id="nombre" name="nombre" label="Name"  placeholder="Ingresa tu nombre"/>
                <label>Nombre de usuario</label>
                    <s:textfield id="usuario" name="usuario" label="User"  placeholder="Elige un nombre de usuario"/>
                <label>Email</label>
                    <s:textfield id="mail" name="mail" label="Email" placeholder="email para ingresar"/>
                <label>Contraseña</label>
                    <s:password id="pass" name="pass" label="Password" placeholder="elije tu contraseña" /><br>
                    
                    <!--s:submit value="Registrarse" cssClass="btn" /-->
                <div class="control-group">
                    <label class="control-label" for="input01"></label>
                        <div class="controls">
                        <button type="submit" class="btn btn-success" rel="tooltip" title="first tooltip">Registrarse</button>
	        </div>
                
           </s:form>  
                
      </div>
        
        </div>
        <div class="span4">
         <br><img src="./img/logor.png"  width="286" height="310">             
        </div>
      
      
      </div>
    </div>
   </div>    
<%@include file="footer.jsp"%>

   
<script type="text/javascript">
	  $(document).ready(function(){
			
			$("#registerHere").validate({
				rules:{ 
                                        nombre:"required",
                                        usuario:"required",
					mail:{
							required:true,
							email: true
						},
					pass:{
						required:true,
						minlength: 6
					}
				},
				messages:{
                                        nombre:"Ingrese Nombre Completo",
                                        usuario:"Ingrese un Usuario",
					mail:{
						required:"Ingrese una dirección de correo",
						email:"Ingrese una dirección de correo valida"
					},
					pass:{
						required:"Ingrese una Contraseña",
						minlength:"La Contraseña  debe contener por lo menos 6 caracteres"
					}
				},
				errorClass: "help-inline",
				errorElement: "span",
				highlight:function(element, errorClass, validClass) {
					$(element).parents('.control-group').addClass('error');
				},
				unhighlight: function(element, errorClass, validClass) {
					$(element).parents('.control-group').removeClass('error');
					$(element).parents('.control-group').addClass('success');
				}
			});
		});
	  </script>
