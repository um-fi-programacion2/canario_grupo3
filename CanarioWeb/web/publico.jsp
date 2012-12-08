<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Usuario:</li>
              <img src="./img/users/<%= u.getImagen() %>"  width="150" height="310"> 
              <s:form action="changeFollowState" method="post">
                     <s:submit cssClass="btn btn-success" value="Seguir"/>
                </s:form> 
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li class="nav-header">Información:</li>
              <li>Followers:<a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li>Following:<a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li>Twits: <a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              <li><a href="http://twitter.github.com/bootstrap/examples/fluid.html#">Link</a></li>
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span7">
          <div class="hero-unit">
            <s:iterator value="%{listarTwits}">
                <table class="table table-striped" widht="500">
                    <tbody>
                    <tr>
                
                 <td> <s:property value="string" /> </td>
                  <td> <s:property value="timestam" /> </td>
                </tr></tbody>
                </table>
            </s:iterator>
          </div>
          <div class="row-fluid">
          
          </div><!--/row-->
          <div class="row-fluid">
           
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp"%>
