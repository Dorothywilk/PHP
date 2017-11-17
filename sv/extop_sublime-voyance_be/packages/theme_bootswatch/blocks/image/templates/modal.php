<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	$page = Page::getCurrentPage();
?>

<!-- Button to trigger modal -->
<a href="#myModal_<?php   echo $bID; ?>" role="button" class="btn" data-toggle="modal"><?php  echo $page->getCollectionName();?></a>

<!-- Modal -->
<div id="myModal_<?php   echo $bID; ?>" class="modal hide fade HTMLBlock" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h3><?php  echo $page->getCollectionName();?></h3>
    </div>
  <div class="modal-body">
    <?php  echo($controller->getContentAndGenerate()); ?>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>