<?php   defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper("interface/flag", 'multilingual');
?>

<div class="btn-group btn-group-vertical">

    <?php   foreach($languageSections as $ml) { ?>
        <a href="<?php   echo $action?>?ccmMultilingualChooseLanguage=<?php   echo $ml->getCollectionID()?>&ccmMultilingualCurrentPageID=<?php   echo $cID?>" class="btn <?php   if ($activeLanguage == $ml->getCollectionID()) { ?>active<?php   } ?>"><?php 
            print $ih->getSectionFlagIcon($ml);
        ?></a>
    <?php   } ?>

</div>

