<%@include file="header.jsp"%>

<div class="row-fluid"> 
        <div class="span3">
         <div class="well" > 
            <ul class="nav nav-list">
              <li class="nav-header">Usuario: <strong><a href="http://localhost:8084/publico?u=<%= u.getNombre() %>"><%= u.getUsuario() %></a></strong> </li>
              
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
                  <s:textarea id="strings"   name="strings"  maxlength="200" rows="2" placeholder="canarear!!!"></s:textarea> 
                  
                  <div class="control-group">
                    <label class="control-label"></label>
                    <div class="controls">
                    <div id="caracteres"></div>
                        <button type="submit" class="btn btn-warning" >enviar</button>
                    
                    </div>
                    </div>
            </s:form>
              
              
              
            </ul>
       </div>   <!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="hero-unit">
               <div id="divtest">cargando.....</div>
          </div>
         </div><!--/span-->
                  

               <div class="span3">
                  
            
                  <div class="well">
                    <h4>Top 10 Usuarios:</h4>

                        
                    <div id="topUser">cargando...</div>
                  </div> 
              
                 <div class="well"> 
                      <h4>Top 10 Temas:</h4>
                   
                   
                    <div id="topHash">cargando.....</div>
                 </div> 
                
               </div><!--/span-->
               
               
      </div><!--/row-->
      <div id="trash1" hidden></div>
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
        function rt(idu,nombre,idt) {
            //alert(idu +"-" +nombre+"-"+idt);
             $("#trash1").load('http://localhost:8084/api/retweet?id='+idu+'&nombre='+nombre+'&twit='+idt);
             //$("#topUser").load("http://localhost:8084/topUsuarios");
             //window.scrollTo(0,0);
            }
        
    </script>    
