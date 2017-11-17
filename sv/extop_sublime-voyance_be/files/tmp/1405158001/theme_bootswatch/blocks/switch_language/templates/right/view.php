<?php   defined('C5_EXECUTE') or die(_("Access Denied.")); ?>

<form method="post" action="<?php   echo $action?>" class="text-right form-inline">
	<span class="help-inline"><?php   echo $label?></span>
	<?php   echo $form->select('ccmMultilingualChooseLanguage', $languages, $activeLanguage)?>
	<input type="hidden" name="ccmMultilingualCurrentPageID" value="<?php   echo $cID?>" />
</form>