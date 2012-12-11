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
              <s:form action="sendtwit">
                    <s:textarea cols="20" rows="4" name="string" maxlength="150" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span7">
          <div class="hero-unit">
               <div id="divtest">Este contenido va a cambiar :D</div>
          </div>
            
            
          <div class="row-fluid">
            <div class="span4">
              <h2>Menciones:</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Top 10 users:</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Top 10 por Regiones:</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
          </div><!--/row-->
          
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp"%>
<script>
 $(document).ready(function() {
 	 $("#divtest").load("http://localhost:8084/listar");
   var refreshId = setInterval(function() {
      $("#divtest").load('http://localhost:8084/api/listar');
   }, 9000);
   $.ajaxSetup({ cache: false });
});
</script>