<?php   defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper("interface/flag", 'multilingual');
?>

<div class="btn-group">
    <a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#"><?php   echo $label?>&nbsp;<span class="caret"></span></a>

    <ul class="dropdown-menu">
        <?php   foreach($languageSections as $ml) {  ?>
            <li class="<?php   if ($activeLanguage == $ml->getCollectionID()) { ?>active<?php   } ?>">
                <a href="<?php   echo $action?>?ccmMultilingualChooseLanguage=<?php   echo $ml->getCollectionID()?>&ccmMultilingualCurrentPageID=<?php   echo $cID?>">
                    <?php  print $ih->getSectionFlagIcon($ml) . ' ' . $ml->getLanguageText($ml->getLocale()) .  ' ' . (strlen($ml->msIcon)?'('.$ml->msIcon.')':''); ?>
                </a>
            </li>
        <?php   } ?>
    </ul>
</div>
