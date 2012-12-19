<%@include file="header.jsp"%>

<div class="row-fluid"> 
        <div class="span3">
         <div class="well" > 
            <ul class="nav nav-list">
              <li class="nav-header">Usuario: <strong><a href="./publico?u=<%= u.getNombre() %>"><%= u.getUsuario() %></a></strong> </li>
              
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
              
               <div id="divtest"><img src="./img/loader.gif"></div>
          </div>
         </div><!--/span-->
                  

               <div class="span3">
                  
            
                  <div class="well">
                    <h4>Top 10 Usuarios:</h4>
                    <div id="fusers" hidden></div>
                <select id="filterUsers" class="selectpicker">
                <option>Todos</option>
                <option>Capital</option>
                <option>General Alvear</option>
                <option>Godoy Cruz</option>
                <option>Guaymallen</option>
                <option>Junin</option>
                <option>La Paz</option> 
                <option>Las Heras</option>
                <option>Lavalle</option> 
                <option>Lujan</option> 
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
                        
                    
                    <div id="topUser"><img src="./img/loader.gif"></div>
                  </div> 
              
                 <div class="well"> 
                      <h4>Top 10 Temas:</h4>
                   
                      <div id="fhashs" hidden></div>
                 <select id="filterHashs" class="selectpicker">
                <option>Todos</option>
                <option>Capital</option>
                <option>General Alvear</option>
                <option>Godoy Cruz</option>
                <option>Guaymallen</option>
                <option>Junin</option>
                <option>La Paz</option> 
                <option>Las Heras</option>
                <option>Lavalle</option> 
                <option>Lujan</option> 
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
                    <div id="topHash"><img src="./img/loader.gif"></div>
                 </div> 
                
               </div><!--/span-->
               
               
      </div><!--/row-->
      <div id="trash1" hidden></div>
       <script src="./js/jquery-1.7.1.min.js"></script>
      <script src="./js/jquery.validate.min.js"></script>
     <script type="text/javascript" src="./js/bootstrap-typeahead.js"></script>
    <script src="./js/script.js"></script>
<%@include file="footer.jsp"%>
<script src="./js/bootstrap-select.js"></script>
<script>
 $(document).ready(function() {
 	 $("#divtest").load("../listar");
   var refreshId = setInterval(function() {
      $("#divtest").load('../listar');
   }, 6000);
   $.ajaxSetup({ cache: false });
});
</script>

<script>
 $(document).ready(function() {
     $('select').selectpicker();
 	 $("#topUser").load("../topUsuarios");
   var refreshTopu = setInterval(function() {
      $("#topUser").load('../topUsuarios');
   }, 4000);
   $.ajaxSetup({ cache: false });
});
</script>
<script>
 $(document).ready(function() {
 	 $("#topHash").load("../topHashtags");
   var refreshTopu = setInterval(function() {
      $("#topHash").load('../topHashtags');
   }, 4000);
   $.ajaxSetup({ cache: false });
});
</script>
<script>
        function rt(idu,nombre,idt) {
            //alert(idu +"-" +nombre+"-"+idt);
             $("#trash1").load('../api/retweet?id='+idu+'&nombre='+nombre+'&twit='+idt);
             var no = noty({ layout: 'bottomRight',type: 'warning',  closeWith: ['hover'], text: 'Retweet enviado correctamente!'});
            }
        
    </script>
    
<script>
    $("#filterUsers").change(function () {
          var str = "";
          $("#filterUsers option:selected").each(function () {
               
                str = $(this).text();
                //alert(str);
              });
              $("#fusers").load('../api/filteru?'+ $.param({f:str}));
        })
        .change();
        
            $("#filterHashs").change(function () {
          var str = "";
          $("#filterHashs option:selected").each(function () {
               
                str2 = $(this).text();
               // alert(str);
              });
              $("#fhashs").load('..api/filterh', {h:str2});
        })
        .change();
</script>