<?php    
defined('C5_EXECUTE') or die(_("Access Denied."));
$target = isset ($blank) ? ' target=_BLANK' : '';
$classLarge = "small";
if (isset ($large)) {
	$classLarge = "large";
}
?>
<!--[if lt IE 8]> 
<style>
	.sociallinks .icons .text {
		display:block;
		vertical-align:top;
	}
</style>
<![endif]-->
<!-- SOCIAL PROFILES -->
<div class="sociallinks">
	<div class="btn-group <?php  echo $classLarge; if (isset ($right)) : ?> right<?php  endif; if (!isset ($text)) : ?> icons<?php  endif;?>">
		<?php  foreach ($profiles as $value => $url) :
			$socialName = ucfirst(str_replace('_', ' ', $value));
			$link = isset ($text) ? $socialName : '';

			if ($url != null) {
				if ($value === 'email') {
					$url = 'mailto:' . $url;
					$title = t('Send me an email.');
				}
				else {
					$pos = stripos($url, 'http://');
					$pos = ($pos === false || $pos > 0) ? stripos($url, 'https://') : $pos;
					$pos = ($pos === false || $pos > 0) ? stripos($url, 'ftp://') : $pos;
					$url = ($pos === false || $pos > 0) ? $url = 'http://' . $url : $url;
					$url = "'" . $url . "'" . $target;
					$title = t('Find me on ') . $socialName . '.';
				}
				
				$content = "<i class='font-".$value."'></i><span class='text'>" . $socialName . "</span>";
				if ($right) {
					$content = "<span class='text'>". $socialName . "</span><i class='font-".$value."'></i>";
				}
				
				echo "<button class='btn btn-". $classLarge . "'><a rel='external, nofollow, noindex' href=" . $url . " title='" . $title . "' class='" .$value. " " . $style . "'>".$content."</a></button>";
			}			
		endforeach; ?>
	</div>
</div>
