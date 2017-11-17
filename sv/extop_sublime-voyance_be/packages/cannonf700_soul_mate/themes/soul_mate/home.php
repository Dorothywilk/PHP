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
      <div class="container_row">
        <div class="column_left">
          <div class="title">

		<?php   if ($c->isEditMode()) { ?>
		<div style="color:#ccccff">
		<?php   } ?>

		<?php 
         	$clt = new Area('Left_Title');
         	$clt->display($c);
         	?>

		<?php   if ($c->isEditMode()) { ?>
		</div>
		<?php   } ?>
		</div>
		
          <div class="left_detail">
          	<?php 
         	$cld = new Area('Left_Detail');
         	$cld->display($c);
         	?>
			</div>
          <div class="bottom_curve">
            <?php 
         	$clb = new Area('Left_Bottom');
         	$clb->display($c);
         	?>
          </div>
        </div>
        <div class="column_center">
          <div class="title">

		<?php   if ($c->isEditMode()) { ?>
		<div style="color:#ccccff">
		<?php   } ?>		
		
		<?php 
         	$cct = new Area('Center_Title');
         	$cct->display($c);
         	?>
		<?php   if ($c->isEditMode()) { ?>
		</div>
		<?php   } ?>
		</div>

          <div class="center_detail">
          	<?php 
         	$ccd = new Area('Center_Detail');
         	$ccd->display($c);
         	?>
			</div>
          <div class="bottom_curve">
            <?php 
         	$ccb = new Area('Center_Bottom');
         	$ccb->display($c);
         	?>

          </div>
        </div>
        <div class="column_right">
          <div class="title">
		<?php   if ($c->isEditMode()) { ?>
		<div style="color:#ccccff">
		<?php   } ?>

		<?php 
         	$crt = new Area('Right_Title');
         	$crt->display($c);
         	?>

		<?php   if ($c->isEditMode()) { ?>
		</div>
		<?php   } ?>
			</div>

          <div class="right_detail">
          	<?php 
         	$crd = new Area('Right_Detail');
         	$crd->display($c);
         	?>
			</div>
          <div class="bottom_curve">
           <?php 
         	$crb = new Area('Right_Bottom');
         	$crb->display($c);
         	?>
          </div>
        </div>
        <div class="clear"></div>
        <?php   if ($c->isEditMode()) { ?>
		<div style="height:80px">
		<?php   } ?>
        <?php   if ($c->isEditMode()) { ?>
		</div>
		<?php   } ?>
        
        <div class="row2">
        <?php 
         	$a = new Area('sidebar');
         	$a->display($c);
         	?>
        </div>
      </div>

      <?php 
$this->inc('elements/footer.php');
?>