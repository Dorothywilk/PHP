<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	$content = $controller->getContent();
?>
    <div class="hero-unit">
        <?php 	print $content; ?>
    </div>
