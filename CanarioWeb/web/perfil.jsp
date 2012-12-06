<%@page import="javassist.compiler.ast.Variable"%>
<?xml version="1.0" encoding="UTF-8"?>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" >

<!DOCTYPE html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<s:url value="bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="all">
<link href="Vista/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link href="<s:url value="Vista/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all">
  <script src="<s:url value="Vista/js/modernizr-2.6.1-respond-1.1.0.min.js"/>"</script>
  <link rel="Vista/stylesheet/less" href="<s:url value="css/Less/bootstrap.less"/>">
    <script src="<s:url value="Vista/js/less-1.3.0.min.js"/>" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<title>Canario!!!</title></head>

<body>

<div class="container">
 
<div class="navbar navbar-fixed-top	">
	<div class="navbar-inner">
    	<div class="container">
        	<ul class="nav nav-pills">
            <a class="brand" href="#">Canario Web</a>
        	<li class="active">
                    <a href="home.jsp"><i class="icon-home"></i>  Home</a>
            </li>
            <li>
                <s:a href="perfil.jsp"><i class="icon-white icon-user"></i>  Perfil</s:a>
            </li>
          
            </ul>
           <div class="pull-left"> 
          <form class="navbar-form"><input type="text" class="search-query span3 " placeholder="Buscar">
          
          </form>   </div>
        </div>
    </div>
</div> 

 <div class="contenedor">
 	
     <div class="seguidores"><h4><br><br><s:property value="nombre" />
<br>

   
<br><br><br></h4></div>
            

 </div>
<div class="mensajes"><h1><br> 
           <h2>Configuración del Perfil</h2>
<s:actionerror />
<s:form action="userImage" method="post" enctype="multipart/form-data" cssClass="well">
    <s:file name="userImage" label="Imagen de Perfil" />    <s:submit value="Subir" align="right" />
</s:form>

                 
           
        <s:form cssClass="well well-small" action="GuardarPerfil" method="post">
    
             <s:iterator value="%{traeperfil}">
                 <s:textfield label="Nombre" name="nombre" value="<s:property value='nombre' />"><s:property value="nombre" /></s:textfield>
                   <s:textfield label="Email" name="mail" placeholder="Cambie su email"><s:property value="mail" /></s:textfield>
                    <s:password label="Password" name="pass" placeholder="igrese nueva clave"><s:property value="pass" /></s:password>
                     <s:textarea label="Bio"  cols="40" rows="5" name="bio" maxlength="300" placeholder="a"></s:textarea> 
                                     
                     <s:submit class="btn btn-success" value="Guardar Cambios"/>
                
                  
               
            </s:iterator>
                   
                </s:form>    


            <br><br><br><br><br><br><br><br><br><br><br><br></h1></div> 
  <!-- end .container --></div>
  
  
<script type="text/javascript" src="<s:url value="Vista/js/jquery.js"/>"></script>
  <script type="text/javascript" src="<s:url value="Vista/js/textarea.js"/>"></script>         
	<script type="text/javascript" src="<s:url value="Vista/js/bootstrap.collapse.js"/>"></script>
    <script type="text/javascript" src="<s:url value="Vista/js/bootstrap.js"/>"></script>
</body>
</html>





