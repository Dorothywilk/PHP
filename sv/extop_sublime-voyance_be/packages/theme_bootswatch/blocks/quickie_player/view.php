<?php   
defined('C5_EXECUTE') or die("Access Denied.");
global $c;

if ($c->isEditMode()) { ?>
	<div class="ccm-edit-mode-disabled-item" >
	
		<img src="<?php   echo  $bURL . "/img/169.svg" ?>" width="100%" height="auto" title="<?php    echo t('YouTube Video disabled in edit mode.'); ?>">
	</div>
<?php    } else { ?>
	
	<div id="quickie<?php    echo $bID?>" class="quickieBlock">
			<?php    echo $vEmbed;?>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#quickie<?php   echo $bID?>").fitVids();});
			 </script>
<?php    }  ?>
	
	