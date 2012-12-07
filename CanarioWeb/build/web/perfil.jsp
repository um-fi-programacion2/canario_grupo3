<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span7">
          <div class="hero-unit">
            <s:form action="userImage" method="post" enctype="multipart/form-data">
    <s:file name="userImage" label="Imagen de Perfil" />    <s:submit value="Subir" align="right" />
</s:form>

<s:form class="well well-small" action="GuardarPerfil" method="post">
                    <s:textfield label="Nombre" name="nombre" placeholder="nuevo nombre de usuario"/><br>
                    <s:textfield label="Email" name="mail" placeholder="Cambie su email"/><br>
                    <s:password label="Password" name="pass" placeholder="igrese nueva clave"/><br>
                     <s:textarea label="Bio"  cols="40" rows="5" name="bio" maxlength="300" placeholder="Escriba algo sobre usd"></s:textarea> <br>

                     <s:submit class="btn btn-success" value="Guardar Cambios"/>
                </s:form> 
          </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

 <%@include file="footer.jsp"%>
