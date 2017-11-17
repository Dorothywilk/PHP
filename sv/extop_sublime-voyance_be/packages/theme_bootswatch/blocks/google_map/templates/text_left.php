<?php   defined('C5_EXECUTE') or die("Access Denied.");

echo "<style>.googleMapCanvas{ height: 400px;}</style>";
$c = Page::getCurrentPage();
 ?>

<?php   if( strlen($title)>0){ ?>
    <h3><?php  echo $title?></h3>
<?php   } ?>

<span class="span4">
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
</span>
<span class="span7">
    <?php  if ($c->isEditMode()) { ?>
        <div class="ccm-edit-mode-disabled-item googleMapCanvas well">
            <div style="padding: 80px 0px 0px 0px"><?php  echo t('Google Map disabled in edit mode.')?></div>
        </div>
    <?php   } else { ?>
        <div id="googleMapCanvas<?php  echo $bID?>" class="googleMapCanvas well"></div>
    <?php   } ?>
</span>
<span class="clearfix"></span>