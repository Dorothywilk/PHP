<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	$file = $controller->getFileObject();
	$w = $file->getAttribute('width');
	$h = $file->getAttribute('height');
	
$c = Page::getCurrentPage();
 
$vWidth=$w;
$vHeight=$h;

if ($c->isEditMode()) { ?>
    <div class="media text-left">
        <div class="media-object">
            <div class="ccm-edit-mode-disabled-item" style="width:<?php  echo $vWidth?>px; height:<?php  echo $vHeight?>px;">
                <div style="padding:8px 0px; padding-top: <?php  echo round($vHeight/2)-10?>px;"><?php  echo t('Content disabled in edit mode.')?></div>
            </div>
        </div>
    </div>
<?php   }else{ ?>
    <div class="media text-left">
        <div id="swfcontent<?php  echo $bID?>"><?php  echo t('You must install Adobe Flash to view this content.')?></div>
        <div class="media-object">
        <script type="text/javascript" language="JavaScript">
            params = {
                wmode:  "transparent",
                play: "true",
                quality:  "<?php  echo $controller->quality?>",
                movie:  "<?php  $file->getRelativePath()?>"
            };

            flashvars = {};
            swfobject.embedSWF("<?php  echo $file->getRelativePath()?>", "swfcontent<?php  echo $bID?>", "<?php  echo $w?>", "<?php  echo $h?>", "<?php  echo $controller->minVersion?>", false, flashvars, params);
        </script>
        </div>
    </div>
<?php   } ?>