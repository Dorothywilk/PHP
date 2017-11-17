<?php   defined('C5_EXECUTE') or die("Access Denied.");

echo "<style>.googleMapCanvas{ height: 400px;}</style>";
$c = Page::getCurrentPage();
?>

<?php   if( strlen($title)>0){ ?>
    <h3><?php  echo $title?></h3>
<?php   } ?>

<?php  if ($c->isEditMode()) { ?>
	<div class="ccm-edit-mode-disabled-item googleMapCanvas well">
		<div style="padding: 80px 0px 0px 0px"><?php  echo t('Google Map disabled in edit mode.')?></div>
	</div>
<?php   } else { ?>	
	<div id="googleMapCanvas<?php  echo $bID?>" class="googleMapCanvas well"></div>
<?php   } ?>