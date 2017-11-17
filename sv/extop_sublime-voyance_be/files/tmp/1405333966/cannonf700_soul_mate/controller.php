<?php    
/*
*Verion History
* 1.00 - Initial Version
* 1.01 - Added Blog Entry Page Type and centralized header content into the Header.php file
*/
defined('C5_EXECUTE') or die(_("Access Denied."));

class Cannonf700SoulMatePackage extends Package {

	protected $pkgHandle = 'cannonf700_soul_mate';
	protected $appVersionRequired = '5.3.0';
	protected $pkgVersion = '1.02';
	
	public function getPackageDescription() {
		return t("Soul Mate theme COPYRIGHT STYLISHTEMPLATE.COM Converted by www.rynomediaonline.com");
	}
	
	public function getPackageName() {
		return t("Soul Mate");
	}
	
	public function install() {
		$pkg = parent::install();
		
		// install block		
		PageTheme::add('soul_mate', $pkg);		 
	}




}