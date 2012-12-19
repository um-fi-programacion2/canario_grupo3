<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="./js/noty/jquery.noty.js"></script>
<script type="text/javascript" src="./js/noty/layouts/bottom.js"></script>
<script type="text/javascript" src="./js/noty/layouts/bottomCenter.js"></script>
<!-- You can add more layouts if you want -->
<script type="text/javascript" src="./js/noty/themes/default.js"></script>


<script src="./js/bootstrap-transition.js"></script>
    <script src="./js/bootstrap-alert.js"></script>
    <script src="./js/bootstrap-modal.js"></script>
    <script src="./js/bootstrap-dropdown.js"></script>
    <script src="./js/bootstrap-scrollspy.js"></script>
    <script src="./js/bootstrap-tab.js"></script>
    <script src="./js/bootstrap-tooltip.js"></script>
    <script src="./js/bootstrap-popover.js"></script>
    <script src="./js/bootstrap-button.js"></script>
    <script src="./js/bootstrap-collapse.js"></script>
    <script src="./js/bootstrap-carousel.js"></script>
    <script src="./js/bootstrap-typeahead.js"></script>
    <script src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/jquery.validate.js"></script>
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
    <link href="./css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


  </head>

  <body>
      <div class="navbar navbar-inverse navbar-fixed-top">
              <div class="navbar-inner">
                  
                
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  
                  <div class="nav-collapse collapse navbar-inverse-collapse">
                    <ul class="nav">
                      <li class="span6 pull-right"><a href="#" class="brand"><img src="./img/logo.png" width="20"> CanarioWeb</a></li>
                    </ul>
                          
                    <ul class="nav pull-right">
                      
                      <li class="divider-vertical"></li>
                      <li class="dropdown">         
                             <s:form cssClass="navbar-form pull-right" action="login" method="post">
                                <s:textfield cssClass="span2" name="mail" placeholder="Ingrese su email"/>
                                <s:password cssClass="span2" name="pass" placeholder="Ingrese su contraseña"/>
                                <s:submit cssClass="btn" value="Logueate"/>
                            </s:form>
                        
                      </li>
                    </ul>
                  </div><!-- /.nav-collapse -->
               
              </div><!-- /navbar-inner -->
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
                    <div class="control-group">
                    <label class="control-label" for="usuario"></label>
                    <div class="controls">
                   
                    <s:textfield label="usuario"  name="usuario" placeholder="Ingresa tu Nombre Completo"/><br> 
                    </div></div>
                <label>Nombre de usuario</label>
                    <s:textfield id="nombre" name="nombre" label="Name"  placeholder="Elige un nombre de usuario"/><span id="status"></span>
                <label>Email</label>
                    <s:textfield id="mail" name="mail" label="Email" placeholder="email para ingresar"/><span id="status2"></span>
                <label>Contraseña</label>
                    
                    <div class="control-group">
                    <label class="control-label" for="pass"></label>
                    <div class="controls">
                   
                    <s:password label="Password" name="pass" placeholder="elije tu contraseña" /><br>
                    </div></div>
                    <!--s:submit value="Registrarse" cssClass="btn" /-->
                <div class="control-group">
                    <label class="control-label" for="input01"></label>
                        <div class="controls">
                        <button type="submit" class="btn btn-success" rel="tooltip" >Registrarse</button>
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
        <script src="./js/jquery-1.7.1.min.js"></script>
        <script src="./js/jquery.validate.min.js"></script>
        
        <script type="text/javascript">
            $(document).ready(function(){
	$.validator.addMethod("Regex", function(value, element) {
             return this.optional(element) || /^[a-z0-9\-]+$/i.test(value);
            }, "Username must contain only letters, numbers, or dashes.");
             jQuery.validator.addMethod("lettersonly", function(value, element) {
                return this.optional(element) || /^[A-Za-z ]+$/i.test(value);
                }, "Letters only please");     
			$("#registerHere").validate({
				rules:{ 
                                            usuario:{required: true,
                                            lettersonly:true
                                        },
					pass:{
						required:true,
						minlength: 6
                                        }
				},
				messages:{
                                        usuario:{required:"Ingrese su Nombre y Apellido",
                                        lettersonly:"Solo puede ingresar Letras en su Nombre y Apellido"
                                        },
					pass:{
						required:"Ingrese una Contrasenia",
						minlength:"La Contrasenia  debe contener por lo menos 6 caracteres"
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
<script type="text/javascript">

$(document).ready(function()
{
jQuery.validator.addMethod("lettersonly", function(value, element) {
                return this.optional(element) || /^[A-Za-z ]+$/i.test(value);
                }, "Letters only please");    
    
    


$("#nombre").change(function() 
{ 
var username = $("#nombre").val();
var msgbox = $("#status");
rexp = new RegExp(/^[a-zA-Z0-9_-]{4,16}$/);
if(rexp.test(username)== true)
{
$("#status").html('<img src="./img/loader.gif">&nbsp;Verificando Disponibilidad.');
$.ajax({ 
type: "GET", 
url: "../api/checkuser", 
data: "u="+ username,
dataType:"json",
success: function(msg){ 
$("#status").ajaxComplete(function(event, request){ 
    //alert(msg.message);
if(msg.message == "OK")
{ 
$("#status").html('<img src="./img/yes.png"> <font color="Green"> Disponible </font>');
} 
else 
{ 
$("#status").html('<font color="Red"> No disponible </font>');
} 
});
} 
}); 

}
else
{
$("#status").html('<font color="#cc0000">Ingresar un nombre de usuario valido</font>');
}
return false;
});

$("#mail").change(function() 
{ 
var email = $("#mail").val();
var msgbox = $("#status2");
rexp = new RegExp(/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/);
if(rexp.test(email)== true)
{
$("#status2").html('<img src="./img/loader.gif">&nbsp;Verificando Disponibilidad.');$
.ajax({ 
type: "GET", 
url: "../api/checkmail", 
data: "m="+ email,
dataType:"json",
success: function(msg){ 
$("#status2").ajaxComplete(function(event, request){ 
    //alert(msg.message);
if(msg.message == "OK")
{ 
$("#status2").html('<img src="./img/yes.png"> <font color="Green"> Disponible </font>');
} 
else 
{ 
$("#status2").html('<font color="Red"> No disponible </font>');
} 
});
} 
}); 

}
else
{
$("#status2").html('<font color="#cc0000">Ingresar una direción de correo valida</font>');
}
return false;
});
});
</script>
