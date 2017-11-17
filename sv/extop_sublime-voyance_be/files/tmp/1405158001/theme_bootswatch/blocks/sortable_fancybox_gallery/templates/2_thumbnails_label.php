<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$column_width = (100 / $displayColumns) . "%";
$rel = "fancybox{$controller->bID}"; //Avoid conflict with other js lightboxes, and isolate each block's prev/next nav to one gallery only.
$c = Page::getCurrentPage();

$maxImg = 2;
?>

<div class="sortable_fancybox_gallery_container">
        <?php  $pos=0;
        foreach ($images as $img):
            if ($pos == 0) {
                echo '<ul class="thumbnails">';
            }?>
            <li class="span6">
                <div class="thumbnail">
                    <?php   if ($enableLightbox): ?>
                        <a href="<?php   echo $img['full_src']; ?>" rel="<?php   echo $rel; ?>" title="<?php   echo $img['description']; ?>">
                            <img src="<?php  echo $img['full_src'] ?>" alt="<?php  echo $img['title'] ?>">
                        </a>
                    <?php   else: ?>
                        <img src="<?php  echo $img['full_src'] ?>" alt="<?php  echo $img['title'] ?>">
                    <?php   endif; ?>

                    <h3><?php  echo $img['title'] ?></h3>
                    <p><?php  echo $img['description'] ?></p>
                </div>
            </li>
        <?php 
         $pos++;
        if ($pos == $maxImg) {
            echo '</ul>';
            $pos = 0;
        }
        endforeach; ?>
</div>

<?php   if (!$c->isEditMode() && $enableLightbox && count($images) > 0): /* fancybox init chokes if no applicable dom elements */ ?>
<script type="text/javascript">
$(document).ready(function(){
	$('a[rel="<?php   echo $rel; ?>"]').fancybox({
		'transitionIn' : '<?php   echo $lightboxTransitionEffect; ?>',
		'transitionOut' : '<?php   echo $lightboxTransitionEffect; ?>',
		'titlePosition' : '<?php   echo $lightboxTitlePosition; ?>',
		'overlayColor': '#000'
	});
});
</script>
<?php   endif; ?>

<?php  
// Manually inject view.css upon initial block add.
// This is a workaround to force images to line up
// (initial block add happens via ajax,
// so it's too late for any addHeaderItem()'s).
if ($c->isEditMode()):
	$placeholder_id = "gallery_style_placeholder_{$controller->bID}";
	?>
	
	<div style="display: none;" id="<?php   echo $placeholder_id; ?>"></div>
	
	<script type="text/javascript">
	var gallery_has_style = false;
	$('.sortable_fancybox_gallery_container').each(function(index, element) {

		//Check for indication that view.css was loaded (check ALL instances on the page -- there may be another block on the page that was already loaded with the view.css)
		if ($(this).css('float') == 'left') {
			gallery_has_style = true;
		}
		
		//Load view.css if it doesn't appear to exist
		if (!gallery_has_style) {
			$.ajax({
				url: '<?php   echo $inline_view_css_url; ?>',
				success: function(css) {
					css = '<style>' + css + '</style>';
					$('#<?php   echo $placeholder_id; ?>').html(css);
				}
			});
		}

	});
	</script>

<?php   endif; ?>