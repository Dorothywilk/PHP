<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	$content = $controller->getContent();
?>
    <div class="well">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <?php 	print $content; ?>
    </div>
