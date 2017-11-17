<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	$content = $controller->getContent();
?>
    <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <?php 	print $content; ?>
    </div>
