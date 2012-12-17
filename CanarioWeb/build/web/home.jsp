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
                  <s:textarea id="strings"   name="strings"  maxlength="200" rows="2" placeholder="canarear!!!"></s:textarea> 
                  
                  <div class="control-group">
                    <label class="control-label"></label>
                    <div class="controls">
                    
                        <button type="submit" class="btn btn-warning" >enviar</button>
                    
                    </div>
                    </div>
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
                    <h4>Top 10 Usuarios:</h4>             
                    <select name=select1 onchange='OnChange(this.form.select1);'>
                        <option>Todos</option>
                        <option>Capital (Mendoza)</option>
                        <option>General Alvear</option>
                         <option>Godoy Cruz</option>
                          <option>Guaymallen</option>
                           <option>Junin</option>
                            <option>La Paz</option>
                             <option>Las Heras</option>
                              <option>Lavalle</option>
                               <option>Lujan de Cuyo</option>
                                <option>Maipu</option>
                                 <option>Malargue</option>
                                  <option>Rivadavia</option>
                                  <option>San Carlos</option>
                                   <option>San Martin</option>
                                    <option>San Rafael</option>
                                     <option>Santa Rosa</option>
                                      <option>Tunuyan</option>
                                       <option>Tupungato</option>            
                   </select>
                    <div id="topUser">cargando...</div>
                  </div> 
              
                 <div class="well"> 
                      <h4>Top 10 Temas:</h4>
                      <select name=select2 onchange='OnChange(this.form.select2);'>
                        <option>Todos</option>
                        <option>Capital (Mendoza)</option>
                        <option>General Alvear</option>
                        <option>Godoy Cruz</option>
                        <option>Guaymallen</option>
                        <option>Junin</option>
                        <option>La Paz</option>
                        <option>Las Heras</option>
                        <option>Lavalle</option>
                        <option>Lujan de Cuyo</option>
                        <option>Maipu</option>
                        <option>Malargue</option>
                        <option>Rivadavia</option>
                        <option>San Carlos</option>
                        <option>San Martin</option>
                        <option>San Rafael</option>
                        <option>Santa Rosa</option>
                        <option>Tunuyan</option>
                        <option>Tupungato</option>            
                   </select>
                   
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
function OnChange(dropdown)
{
    var myindex  = dropdown.selectedIndex
    var SelValue = dropdown.options[myindex].value
    var baseURL  = <Some value based on SelValue>
    top.location.href =  '${base}/' + setfilter;
    
    return true;
}
</script>   



