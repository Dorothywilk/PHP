<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

      <div class="feature">
        <?php 
         	$feature = new Area('feature');
         	$feature->display($c);
         	?>
        </div>
      <div class="container_row">
     <div class="mainzone">
             <?php 
         	$a = new Area('Main');
         	$a->display($c);
         	?>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
        <div class="row2">
          <div class="box1">
               <?php 
         	$a = new Area('Left_Column');
         	$a->display($c);
         	?>
            <div style="clear:both"></div></div>
          <div class="box2">
               <?php 
         	$a = new Area('Right_Column');
         	$a->display($c);
         	?>
            <div style="clear:both"></div>
            </div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
        <div class="row2">
           <?php 
         	$a = new Area('Sidebar');
         	$a->display($c);
         	?>
            </div>
        <div class="clear"></div>	 
	  </div>
      
<?php 
$this->inc('elements/footer.php');
?>