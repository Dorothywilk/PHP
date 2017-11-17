<?php   defined('C5_EXECUTE') or die("Access Denied.");

echo "<style>.googleMapCanvas{ height: 400px;}</style>";
$c = Page::getCurrentPage();

$tmp_title = $c->getCollectionName();
if( strlen($title)>0){
    $tmp_title = $title;
}
?>

<!-- Button to trigger modal -->
<a href="#myModal_<?php   echo $bID; ?>" role="button" class="btn" data-toggle="modal"><?php  echo $tmp_title?></a>

<!-- Modal -->
<div id="myModal_<?php   echo $bID; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3><?php  echo $tmp_title?></h3>
  </div>
  <div class="modal-body">
    <div id="googleMapCanvas<?php  echo $bID?>" class="googleMapCanvas"></div>
    <address>
        <?php   if( strlen($location)>0){ ?>
            <strong><?php  echo t('Location: %s', $location)?></strong>
        <?php   } ?>

        <?php   if( strlen($latitude)>0){ ?>
            <br><?php  echo t('Latitude: %s', $latitude) ?>
        <?php   } ?>

        <?php   if( strlen($longitude)>0){ ?>
            <br><?php  echo t('Longitude: %s', $longitude) ?>
        <?php   } ?>
    </address>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>