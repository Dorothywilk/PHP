<?php         
defined('C5_EXECUTE') or die(_("Access Denied."));
$db = Loader::db();
$form = Loader::helper('form');
Loader::model('template_theme', 'theme_bootswatch');

$templates = TemplateTheme::getTemplates();
$templateName = TemplateTheme::getSelectedTheme();
$useTypography = TemplateTheme::getUseTypography();

?>
<?php   echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Template Theme'),false, false, false); ?>
<div class="ccm-pane-body">
	<form method="post" action="<?php   echo $this->action('saveTemplateTheme')?>" class="form-stacked">
		<div class='row' style='margin-left:0'>
            <fieldset class="span4">
                <legend style='margin-bottom:0'><?php   echo t('Choose Template')?></legend>
                <div class="clearfix"><?php   echo $form->select('templateNameSelect', $templates, $templateName)?></div>
            </fieldset>
            <fieldset class="span4">
                <legend style='margin-bottom:0'><?php   echo t('Use Typography')?></legend>
                <div class="clearfix">
                    <ul class="inputs-list">
                        <li>
                            <label>
                                <?php   echo $form->radio('useTypography', 1, $useTypography)?>
                                <span><?php   echo t('Yes')?></span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <?php   echo $form->radio('useTypography', 0, $useTypography)?>
                                <span><?php   echo t('No') ?></span>
                            </label>
                        </li>
                    </ul>
                </div>
            </fieldset>
        </div>
        <div class='row' style='margin-left:0'>
            <?php   echo Loader::helper('validation/token')->output('saveTemplateTheme')?>
            <div class="span12"><?php   echo Loader::helper('concrete/interface')->submit(t('Save Settings'), 'saveTemplateTheme', 'ccm-button-right primary')?></span></div>
        </div>
	</form>
</div>
<div class="ccm-pane-footer"></div>
<?php   echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(false);?>
