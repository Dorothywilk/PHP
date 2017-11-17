<?php   defined('C5_EXECUTE') or die('Access Denied.');
$ih = Loader::helper("interface/flag", 'multilingual');
$interfacePageHelper = Loader::helper('interface/page', 'multilingual');
$navigationHelper = Loader::helper('navigation');
$page = Page::getCurrentPage(); ?>

<span class="help-inline">
    <?php  if(strlen($label)) { ?>
        <?php   echo $label?>
     <?php   } ?>

    <div class="btn-group">
        <?php   foreach($languageSections as $ml) { ?>
            <a href="<?php   echo $navigationHelper->getLinkToCollection($interfacePageHelper->getTranslatedPageWithAliasSupport($page, $ml, true)); ?>" class="<?php   if ($activeLanguage == $ml->getCollectionID()) { ?>active<?php   } ?> btn"><?php 
                echo $ih->getSectionFlagIcon($ml);
            ?></a>
        <?php   } ?>
    </div>
</span>
