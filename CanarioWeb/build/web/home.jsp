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
              <li class="nav-header">Enviar un tweet</li>
              <s:form action="twit">
                    <s:textarea cols="40" rows="5" name="string" maxlength="150" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn" value="enviar"></s:submit> 
            </s:form>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span8">
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
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="http://twitter.github.com/bootstrap/examples/fluid.html#">View details »</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp"%>
