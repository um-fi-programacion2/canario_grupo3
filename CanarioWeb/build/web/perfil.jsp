<%@include file="header.jsp"%>
<div class="row-fluid">
          <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Usuario:</li>
              <img class="img-polaroid" src="./img/users/<%= u.getImagen() %>"  width="150" height="310"> 
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li class="nav-header">Información:</li>
              <li>Followers:<a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li>Following:<a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li>Twits: <a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
   
              <li class="nav-header">Enviar un tweet</li>
              <s:form action="twit">
                    <s:textarea cols="40" rows="5" name="string" maxlength="150" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span7">
          <div class="hero-unit">
            <s:form action="userImage" method="post" enctype="multipart/form-data">
    <s:file name="userImage" label="Imagen de Perfil" />    <s:submit cssClass="btn" value="Subir" align="right" />
</s:form>

<s:form sccClass="well well-small" action="GuardarPerfil" method="post">
                    <s:textfield label="Nombre" name="nombre" placeholder="nuevo nombre de usuario"/><br>
                    <s:textfield label="Email" name="mail" placeholder="Cambie su email"/><br>
                    <s:password label="Password" name="pass" placeholder="igrese nueva clave"/><br>
                     <s:textarea label="Bio"  cols="40" rows="5" name="bio" maxlength="300" placeholder="Escriba algo sobre usd"></s:textarea> <br>

                     <s:submit cssClass="btn" value="Guardar Cambios"/>
                </s:form> 
          </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

 <%@include file="footer.jsp"%>
