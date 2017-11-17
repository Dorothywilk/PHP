<?php   defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper("interface/flag", 'multilingual');
?>

<form method="post" action="<?php   echo $action?>" id="ccm-multilingual-language-list" class="form-inline">
    <legend><?php   echo $label?></legend>

	<?php   if (Loader::helper('validation/numbers')->integer($_REQUEST['rcID'])) { ?>
		<input type="hidden" name="ccmMultilingualCurrentPageID" value="<?php   echo Loader::helper('text')->entities($_REQUEST['rcID'])?>" />
	<?php   } ?>

    <?php   foreach($languageSections as $ml) {  ?>
        <label class="radio inline">
            <input type="radio" name="ccmMultilingualSiteDefaultLanguage" value="<?php   echo $ml->getLocale()?>"  <?php   if ($defaultLanguage == $ml->getLocale()) { ?> checked="checked" <?php   } ?> />
            <?php 
                print $ih->getSectionFlagIcon($ml);
                print ' ' . $ml->getLanguageText($ml->getLocale());
                print ' ' . (strlen($ml->msIcon)?'('.$ml->msIcon.')':'') ;
            ?>
        </label>
    <?php   } ?>
    &nbsp;&nbsp;&nbsp;
    <label class="checkbox inline">
	    <?php   echo $form->checkbox('ccmMultilingualSiteRememberDefault', 1, 1)?> <?php   echo $form->label('ccmMultilingualSiteRememberDefault', t('Remember my choice on this computer.'))?>
	</label>

	<?php   echo $form->submit('submit', t('Save'))?>
</form>
