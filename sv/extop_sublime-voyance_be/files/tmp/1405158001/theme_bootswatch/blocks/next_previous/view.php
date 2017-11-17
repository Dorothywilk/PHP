<?php   defined('C5_EXECUTE') or die("Access Denied.");

$nh = Loader::helper('navigation');
$previousLinkURL = is_object($previousCollection) ? $nh->getLinkToCollection($previousCollection) : '';
$parentLinkURL = is_object($parentCollection) ? $nh->getLinkToCollection($parentCollection) : '';
$nextLinkURL = is_object($nextCollection) ? $nh->getLinkToCollection($nextCollection) : '';
?>

<div id="ccm-next-previous-<?php   echo $bID; ?>" class="pagination">
    <ul>
        <li <?php  $previousLinkURL ? '' : 'class="disabled"' ?>><a href="<?php  echo $previousLinkURL; ?>"><?php  echo $previousLinkText; ?></a></li>
        <li <?php  $parentLinkURL ? '' : 'class="disabled"' ?>><a href="<?php  echo $parentLinkURL; ?>"><?php  echo $parentLinkText; ?></a></li>
        <li <?php  $nextLinkURL ? '' : 'class="disabled"' ?>><a href="<?php  echo $nextLinkURL; ?>"><?php  echo $nextLinkText; ?></a></li>
    </ul>
</div>
