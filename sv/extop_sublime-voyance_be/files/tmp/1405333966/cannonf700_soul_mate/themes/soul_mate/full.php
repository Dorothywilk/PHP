<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>
	      <div class="feature">
        <?php 
         	$feature = new Area('Feature');
         	$feature->display($c);
         	?>
			</div>
        <div class="clear"></div>
      <div class="container_row">
        <div class="mainzone">
             <?php 
         	$a = new Area('Main');
         	$a->display($c);
         	?>
            </div>
        </div>
        <div class="clear"></div>
        <div class="clear"></div>
<?php 
$this->inc('elements/footer.php');
?>