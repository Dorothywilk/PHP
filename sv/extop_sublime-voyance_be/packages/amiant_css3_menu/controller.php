<?php     

defined('C5_EXECUTE') or die(_("Access Denied."));

class AmiantCss3MenuPackage extends Package {

	protected $pkgHandle = 'amiant_css3_menu';
	protected $appVersionRequired = '5.4.0';
	protected $pkgVersion = '0.3';
	
	public function getPackageDescription() {
		return t('Creates CSS3 navigation menu with drop-down submenus.');
	}
	
	public function getPackageName() {
		return t('Amiant CSS3 Menu');
	}
	
	public function install() {
		$pkg = parent::install();
		Loader::model('collection_attributes');
		
		// install attributes
		$this->addCollectionAttribute('BOOLEAN', 'do_not_display_subpages_in_nav', t('Do Not Display Subpages In Navigation (Amiant CSS3 Menu)'), false);
        
		//install block
		BlockType::installBlockTypeFromPackage('amiant_css3_menu', $pkg); 

	}
	
	private function addCollectionAttribute($type, $handle, $name, $searchable)
    {
        $key = CollectionAttributeKey::getByHandle($handle);
        
        if ($key == null) {
            $key = CollectionAttributeKey::add(AttributeType::getByHandle($type),
                                        array('akIsAutoCreated' => 0,
                                              'akHandle' => $handle,
                                              'akName' => $name,
                                              'akIsSearchable' => $searchable
                                        ));
        }
 
        return $key;
    }
    
    public function uninstall() {
		parent::uninstall();
		
	}
    
}
