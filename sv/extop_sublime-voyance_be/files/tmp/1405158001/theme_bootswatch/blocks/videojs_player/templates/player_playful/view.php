<?php    
defined('C5_EXECUTE') or die("Access Denied.");
$p = Page::getCurrentPage();
$pstr = $controller->getFilePosterObject()->getRelativePath();

$b = $this->getBlockObject();
$btID = $b->getBlockTypeID();
$bt = BlockType::getByID($btID);	
$uh = Loader::helper('concrete/urls');
$bURL = $uh->getBlockTypeAssetsURL($bt);
			
?>
<?php   if ( $p->isEditMode() ) { ?>
<div class="ccm-edit-mode-disabled-item">
	<img src="<?php   echo  $bURL . "/img/169.svg" ?>" width="100%" height="auto" title="<?php    echo t('Video disabled in edit mode.'); ?>">
</div>
<?php   }
else {
	$mp4  = $controller->getFileMp4Object()->getRelativePath();
	$ogv  = $controller->getFileOgvObject()->getRelativePath();
	$webm = $controller->getFileWebmObject()->getRelativePath();
?>
	<style>
		/* custom player skin */
		.flow_player { background-color: #000000}
		.flow_player .fp-timeline { background-color: #cccccc}
		.flow_player .fp-progress { background-color: #88171b}
		.flow_player .fp-buffer { background-color: #f9f9f9}
	</style>
	<div id="video_responsive_<?php    echo $bID?>" class="flow_player fixed-controls no-toggle play-button" data-embed="false" data-analytics="[Your analytics ID]">
		<video controls="controls" preload="auto" poster="<?php   echo $pstr; ?>">
			<source src="<?php    echo $mp4; ?>" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
			<source src="<?php    echo $ogv; ?>" type='video/ogg; codecs="theora, vorbis"'>
			<source src="<?php    echo $webm; ?>" type='video/webm; codecs="vp8, vorbis"' />
		</video>
	</div>

	<script type="text/javascript" charset="utf-8">
		$(function () {
			// install flowplayer to an element with CSS class "player"
			$("#video_responsive_<?php    echo $bID?>").flowplayer({ swf: "<?php    echo $this->getBlockURL() ?>/flowplayer.5.4.3/flowplayer.swf" });
		});
	</script>
<?php   } ?>