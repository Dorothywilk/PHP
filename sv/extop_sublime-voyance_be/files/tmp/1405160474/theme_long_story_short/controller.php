<?php      
 
defined('C5_EXECUTE') or die(_("Access Denied."));
 
class ThemeLongStoryShortPackage extends Package {
 
protected $pkgHandle = 'theme_long_story_short';
protected $appVersionRequired = '5.6.0';
protected $pkgVersion = '1.0.5';
 
public function getPackageDescription() {
return t("Installs Long Story Short theme, a simple, basic theme for single-page websites and presentations");
}
 
public function getPackageName() {
return t("Long Story Short");
}
 
public function install() {
$pkg = parent::install();
 
// install block
PageTheme::add('long_story_short', $pkg);
}
 
 
 
 
}