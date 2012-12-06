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
  <script src="Vista/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
  <link rel="Vista/stylesheet/less" href="css/Less/bootstrap.less">
<script src="Vista/js/less-1.3.0.min.js" type="text/javascript"></script>
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
            	<a href="home.html"><i class="icon-home"></i>  Home</a>
            </li>
			<li>
            	<a href="#"><i class="icon-white icon-user"></i>  Perfil</a>
            </li>
          
            </ul>
           <div class="pull-left"> 
          <form class="navbar-form"><input type="text" class="search-query span3 " placeholder="Buscar">
          
          </form>   </div>
        </div>
    </div>
</div> 

 <div class="contenedor">
 	<div class="pensando">
    	
        
  <div class="container-fluid">  
     <div class="accordion" id="accordion2">  
            <div class="accordion-group">  
              <div class="accordion-heading">  
                 <button class=" btn btn-large btn-success accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Canarear</button>  
   
               

               
                </textarea>  
              </div>  
              <div id="collapseOne" class="accordion-body collapse" style="height: 0px; ">  
                <div class="accordion-inner">  
                  <s:form action="twit">
                    <s:textarea cols="40" rows="5" name="string" maxlength="150" placeholder="canarear!!!"></s:textarea> 
        <br><br><s:submit value="enviar"></s:submit> 
            </s:form>
        <s:div id="caracteres"></s:div>
                </div>  
              </div>  
            </div>  
            
    </div>  
  </div>        
        
        
			   </div>
     <div class="seguidores"><h4><br><br><s:property value="nombre" />
<br>
User name :
<s:property value="mail" />
<br>
Password :
<s:property value="pass" /><br><br>
       <br><br>
<s:property value="imagen" /><br>
   
<br><br><br></h4></div>
 	<div class="usuariosact"><h4><br><br>el top 10 de los usuarios mas activos<br><br><br><br></h4></div>

 </div>
<div class="mensajes"><h1><br> 
            <s:form action="listar">
                <s:submit value="listar"/>    
            <s:iterator value="%{listaTwits}">
            
            <tr>
                <td> <s:property value="strings" /> </td>
                </tr>
            </s:iterator></s:form>
            <br><br><br><br><br><br><br><br><br><br><br><br></h1></div> 
  <!-- end .container --></div>
  
  
   <script type="text/javascript" src="Vista/js/jquery.js"></script>
  <script type="text/javascript" src="Vista/js/textarea.js"></script>         
	<script type="text/javascript" src="Vista/js/bootstrap.collapse.js"></script>
    <script type="text/javascript" src="Vista/js/bootstrap.js"></script>
</body>
</html>

