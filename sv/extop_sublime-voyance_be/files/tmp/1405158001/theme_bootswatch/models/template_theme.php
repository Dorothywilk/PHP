<?php           
defined('C5_EXECUTE') or die(_("Access Denied."));

class TemplateTheme extends Object {
    public function getTemplates() {
            $templates= array();

            $pkg = Package::getByHandle('theme_bootswatch');
            $templatePath = $pkg->getPackagePath() . '/themes/theme_bootswatch/bootswatch/';
            $files = glob($templatePath . "*.css");

            $templates["none"] = "";

            foreach ($files as $file) {
              $templates[basename($file, ".css")] = basename($file, ".css");

            }
            return $templates;
        }

    public function getSelectedTheme() {
        $db = Loader::db();
        $result = $db->Execute("SELECT template_name FROM bootswatch_theme");
        $templateName = "";
        while ($row = $result->FetchRow()) {
             $templateName = $row['template_name'];
        }

        return $templateName;
    }
    public function getUseTypography() {
        $db = Loader::db();
        $result = $db->Execute("SELECT template_typography FROM bootswatch_theme");
        $useTypography = 1;
        while ($row = $result->FetchRow()) {
             $useTypography = $row['template_typography'];
        }

        return $useTypography;
    }
}
 