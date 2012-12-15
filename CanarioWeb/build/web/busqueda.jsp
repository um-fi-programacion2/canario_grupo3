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
                  <s:textarea id="textarea" cssClass="texto"  name="string"  maxlength="200" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
              <div id="caracteres"></div>
              
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
            <div class="well">
            <strong><h2>Resultados de la Busqueda:</h2></strong>
              
              
              
           
            <div class="well">
                <h4><strong>  Nombres de Usuarios:</strong></h4><br>
              
                    <s:if test="valoru==2">
                               <h6>No se Encontraron Usuarios</h6>
                           </s:if>  
                    <s:iterator value="nombresUsuarios">
                           <br>
                           
                           <s:if test="valoru==1">
                           <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> 
                           <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /></a>
                           </s:if>
                           
                        </s:iterator>
            </div>
            <div class="well">
                <h4><strong>Temas:</strong></h4><br>
              
                            <s:if test="valorh==2">
                               <h6>No se Encontraron Temas</h6>
                           </s:if>
                
                            <s:iterator value="temasUsuarios">
                           <br>
                           <s:property value="valorh"/>
                           <s:if test="valorh==1">
                           <s:property value="string" />
                           </s:if>
                         
                        </s:iterator>
               </div>         
            <div class="well">
                <strong><h4>Comentarios:</h4></strong><br>
            
                            <s:if test="valort==2">
                               <h6>No se Encontraron Comentarios</h6>
                                </s:if>
                           
                               <s:iterator value="listaTabla">
                          <br>
                           
                        <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30">
                        <a href="http://localhost:8084/publico?u=<s:property value="nombre"/>">@<s:property value="nombre" /> </a>
                        <strong>dijo:</strong> <s:property escapeHtml="false" value="string" />
                        
                           
                        </s:iterator>
                </div>       
                  
              
          </div>
         </div><!--/span-->
                  

               <div class="span3">
                   <div class="well">
                    <h2>Menciones:</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
                  </div><!--/.well -->
            
                  <div class="well">
                    <h2>Top 10 por Regiones:</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
                  </div> 
              
                 <div class="well"> 
                    <h2>Top 10 users:</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
                </div> 
                
               </div><!--/span-->
               
               
               
                      
                      
                      
               
               
      </div><!--/row-->

<%@include file="footer.jsp"%>



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