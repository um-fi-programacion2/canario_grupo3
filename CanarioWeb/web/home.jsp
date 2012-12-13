<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav" >
            <ul class="nav nav-list">
              <li class="nav-header">Usuario:<%= u.getNombre() %></li>
              
              <li align="center"><img class="img-polaroid" src="./img/users/<%= u.getImagen() %>"  width="150" height="310"> </li>
              <li class="nav-header">Biografia:</li>
              <li align="center"><%= u.getBio() %></li>
              <li class="divider"></li>
              <li class="nav-header">Ubicacion:</li>
              <li><%= u.getLocalidad() %></li>
              
              <li class="divider"></li>
              <li class="nav-header">Información:</li>
             
              Followers:<a href="<s:url action="listarFollowers"/>"><strong><%= relacionesDao.countFollowers(u.getIdu()) %></strong></a><br>
              Following:<a href="<s:url action="listarFollowings"/>"><strong><%= relacionesDao.countFollowing(u.getIdu()) %></strong></a><br>
              Twits: <strong><%= relacionesDao.countTwits(u.getIdu()) %></strong>
              
              <li class="divider"></li>
              <li class="nav-header">Enviar un tweet</li>
              <s:form action="sendtwit">
                  <s:textarea id="textarea" cols="20" rows="4" name="string" maxlength="200" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
              <div id="caracteres"></div>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
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



<script>
    $(document).ready(function() {
    var text_max=200;
	$('#caracteres').html(text_max + ' caracteres restantes');
	$('#textarea').keyup(function(){
		var text_lenght= $('#textarea').val().length;
		var text_remaining= text_max - text_lenght;
	$('#caracteres').html(text_remaining + ' caracteres restantes');	
		})	
	
});
</script> 