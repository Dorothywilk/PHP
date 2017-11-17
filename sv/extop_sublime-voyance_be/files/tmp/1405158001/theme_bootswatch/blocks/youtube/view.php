<?php  
defined('C5_EXECUTE') or die("Access Denied.");

$url       = parse_url($videoURL);
$pathParts = explode('/', rtrim($url['path'], '/'));
$videoID   = end($pathParts);

if (isset($url['query'])) {
	parse_str($url['query'], $query);
	$videoID = (isset($query['v'])) ? $query['v'] : $videoID;
}

$vWidth  = ($vWidth)  ? $vWidth  : 425;
$vHeight = ($vHeight) ? $vHeight : 344;
?>


<style>
    .embed-container {
        position: relative;
        padding-bottom: 56.25%; /* 16/9 ratio */
        padding-top: 30px; /* IE6 workaround*/
        height: 0;
        overflow: hidden;
    }

    .embed-container iframe,
    .embed-container object,
    .embed-container embed {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>

    <?php  if (Page::getCurrentPage()->isEditMode()) { ?>
        <div class="ccm-edit-mode-disabled-item img-rounded" style="width:<?php  echo $vWidth?>px; height:<?php  echo $vHeight?>px;"><?php  echo t('YouTube Video disabled in edit mode.')?></div>
    <?php   } elseif ($vPlayer == 1) { ?>
        <div class="embed-container">
            <div id="youtube<?php  echo  $bID; ?>" class="youtubeBlock">
                <iframe class="youtube-player" width="100%" height="100%" src="http://www.youtube.com/embed/<?php  echo  $videoID; ?>" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>
    <?php   } else { ?>
         <div class="embed-container">
            <div id="youtube<?php  echo  $bID; ?>" class="youtubeBlock"><div id="youtube<?php  echo  $bID; ?>_video"><?php  echo  t('You must install Adobe Flash to view this content.'); ?></div></div>
            <script type="text/javascript">
                //<![CDATA[
                params = {
                    wmode: "transparent"
                };
                flashvars = {};
                swfobject.embedSWF('http://www.youtube.com/v/<?php  echo  $videoID; ?>&amp;hl=en', 'youtube<?php  echo  $bID; ?>_video', '100%', '100%', '8.0.0', false, flashvars, params);
                //]]>
            </script>
         </div>
    <?php   } ?>
