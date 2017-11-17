<?php    
defined('C5_EXECUTE') or die(_("Access Denied."));
//Originally developped by Defunct (http://www.concrete5.org/profile/-/view/2162/)
//Modified and enhanced by mnakalay (http://www.concrete5.org/profile/-/view/75201/)
$size = isset ($large) ? '32' : '16';
$target = isset ($blank) ? ' target=_BLANK' : '';
if (isset ($text)) {
    $style = isset($right) ? "style='float:right;margin-left:10px;'" : "style='float:left;margin-right:10px;'";
}
else {
	$style = '';
}
?>

<style>
    <?php  if (isset ($large)) {?>
    .dropdown-menu > li > a {
        line-height:32px;
    }
    <?php  } else {?>
    .dropdown-menu > li > a {
            line-height:16px;
        }
    <?php  } ?>

    <?php  if (isset ($text)) {?>
        .dropdown-menu {
            min-width:200px;
        }
    <?php  } ?>
</style>
<!-- SOCIAL PROFILES -->
<div class="btn-group<?php      if (isset ($large)) : ?> btn-large<?php      endif;if (!isset ($text)) : ?> icons<?php      endif;?>">
     <a class="btn dropdown-toggle <?php  if (isset ($large)) : ?> btn-large<?php      endif;?>" data-toggle="dropdown" href="#"> <?php  echo t('Social');?>&nbsp;&nbsp;<span class="caret"></span></a>
     <ul class="dropdown-menu">
         <?php  foreach ($profiles as $value => $url) :
            $socialName = ucfirst(str_replace('_', ' ', $value));
            $link = isset ($text) ? $socialName : '';
            $pkg = Package::getByHandle('social_icons_reloaded');
            $iconsPath = $pkg->getRelativePath() . '/blocks/social_icons_reloaded/images/';

            if ($url != null) :
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

                echo "<li><a rel='external, nofollow, noindex' href=" . $url . " title='" . $title . "'><img src='" . $iconsPath . $value . "_" . $size . ".png' alt='" . $socialName . "' " . $style . " />" . $link . "</a></li>";
            endif;
        endforeach;?>
    </ul>
</div>
<!-- / SOCIAL PROFILES -->
