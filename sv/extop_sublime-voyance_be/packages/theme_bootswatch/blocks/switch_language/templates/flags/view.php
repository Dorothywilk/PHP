<?php   defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper("interface/flag", 'multilingual');
?>
<span class="help-inline">
    <?php   echo $label?>
    <div class="btn-group">
        <?php   foreach($languageSections as $ml) { ?>
            <a href="<?php   echo $action?>?ccmMultilingualChooseLanguage=<?php   echo $ml->getCollectionID()?>&ccmMultilingualCurrentPageID=<?php   echo $cID?>" class="<?php   if ($activeLanguage == $ml->getCollectionID()) { ?>active<?php   } ?> btn"><?php 
                print $ih->getSectionFlagIcon($ml);
            ?></a>
        <?php   } ?>
    </div>
</span>
