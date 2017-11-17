<?php   defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper("interface/flag", 'multilingual');
?>

<div class="pagination pagination-centered pagination-mini">
    <ul>
        <?php   foreach($languageSections as $ml) { ?>
            <li class="<?php   if ($activeLanguage == $ml->getCollectionID()) { ?>active<?php   } ?>"><a href="<?php   echo $action?>?ccmMultilingualChooseLanguage=<?php   echo $ml->getCollectionID()?>&ccmMultilingualCurrentPageID=<?php   echo $cID?>"><?php 
                print $ih->getSectionFlagIcon($ml);
            ?></a></li>
        <?php   } ?>
    </ul>
</div>

