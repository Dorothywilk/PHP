<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));
class ThemeBootswatchPackage extends Package {

	protected $pkgHandle = 'theme_bootswatch';
	protected $appVersionRequired = '5.6.0';
	protected $pkgVersion = '0.9.1';
	
	public function getPackageDescription() {
		return t("Bootstrap 2.3.2 - Responsive theme by Guillaume Agresta.");
	}
	
	public function getPackageName() {
		return t("Bootswatch");
	}

	public function install() {
		$pkg = parent::install();

		PageTheme::add('theme_bootswatch', $pkg);

	    $iak = CollectionAttributeKey::getByHandle('icon_dashboard');
        Loader::model('single_page');
        $sp = SinglePage::add("/dashboard/pages/template_theme", $pkg);
        $sp->update(array('cName'=>t('Template Theme'), 'cDescription'=>t('Set template bootstrap 2.')));
        $sp->setAttribute($iak,'icon-picture');
	}

	public function upgrade(){
		$pkg = Package::getByHandle('theme_bootswatch');

		parent::upgrade($pkg);
	}

	public function uninstall() {
        $db = Loader::db();
        $db->Execute("drop table if exists bootswatch_theme");
        parent::uninstall();
    }

}