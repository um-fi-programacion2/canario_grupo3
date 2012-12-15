<%@include file="header.jsp"%>

<div class="row-fluid">
        <div class="span3">
         <div class="well" > 
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
              <s:form action="sendtwit" name="enviartwit" id="prueba">
                  <s:textarea id="textarea"   name="strings"  maxlength="200" placeholder="canarear!!!"></s:textarea> 
                  <s:submit cssClass="btn btn-warning" value="enviar"></s:submit>

            </s:form>
              <div id="caracteres"></div>
              
              
            </ul>
       </div>   <!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="well">
               <div id="divtest">cargando.....</div>
          </div>
         </div><!--/span-->
                  

               <div class="span3">
                  
            
                  <div class="well">
                    <h3>Top 10 Usuarios:</h3>             
                    <div id="topUser">cargando...</div>
                  </div> 
              
                 <div class="well"> 
                    <h3>Top 10 Temas:</h3>
                    <div id="topHash">cargando.....</div>
                 </div> 
                
               </div><!--/span-->
               
               
      </div><!--/row-->

<%@include file="footer.jsp"%>
<script>
 $(document).ready(function() {
 	 $("#divtest").load("http://localhost:8084/listar");
   var refreshId = setInterval(function() {
      $("#divtest").load('http://localhost:8084/listar');
   }, 8000);
   $.ajaxSetup({ cache: false });
});
</script>

<script>
 $(document).ready(function() {
 	 $("#topUser").load("http://localhost:8084/topUsuarios");
   var refreshTopu = setInterval(function() {
      $("#topUser").load('http://localhost:8084/topUsuarios');
   }, 8000);
   $.ajaxSetup({ cache: false });
});
</script>
<script>
 $(document).ready(function() {
 	 $("#topHash").load("http://localhost:8084/topHashtags");
   var refreshTopu = setInterval(function() {
      $("#topHash").load('http://localhost:8084/topHashtags');
   }, 8000);
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
