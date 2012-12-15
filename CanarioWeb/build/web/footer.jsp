</div><!--/container-->
<hr>

      <footer>
        <p>Universidad de Mendoza :: Facultad de Ingeniería :: Programación 2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
      </footer>

    </div> <!-- /container -->

    
  
    
    
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./js/jquery.js"></script>
    <script src="./js/bootstrap-transition.js"></script>
    <script src="./js/bootstrap-alert.js"></script>
    <script src="./js/bootstrap-modal.js"></script>
    <script src="./js/bootstrap-dropdown.js"></script>
    <script src="./js/bootstrap-scrollspy.js"></script>
    <script src="./js/bootstrap-tab.js"></script>
    <script src="./js/bootstrap-tooltip.js"></script>
    <script src="./js/bootstrap-popover.js"></script>
    <script src="./js/bootstrap-button.js"></script>
    <script src="./js/bootstrap-collapse.js"></script>
    <script src="./js/bootstrap-carousel.js"></script>
    <script src="./js/bootstrap-typeahead.js"></script>

  </body>
</html>

 <script>
    $(document).ready(function() {
    var text_max=200;
	$('#caracteres').html(text_max + ' caracteres restantes');
	$('#textarea').keyup(function(){
            $(this).animate({ height: "120px" }, 100);
		var text_lenght= $('#textarea').val().length;
		var text_remaining= text_max - text_lenght;
                
	$('#caracteres').html(text_remaining + ' caracteres restantes');	
		});
               
});

</script>

