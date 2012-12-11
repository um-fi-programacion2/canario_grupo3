<%-- 
    Document   : api
    Created on : 08/12/2012, 18:04:12
    Author     : Franco
--%>

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
            <s:form cssClass="form-inline" action="genKey" method="post">         
                        <s:textfield cssClass="input-xlarge uneditable-input" label="Nombre" name="nombre" placeholder="asas223234rg22" />
                        <s:submit cssClass="btn" value="Generar" align="right" />
            </s:form>
<div class="alert">
    <strong>Warning!</strong> Best check yo self, you're not looking too good.
</div>
          </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp"%>
