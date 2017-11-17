<?php
defined('C5_EXECUTE') or die(_("Access Denied."));

class AjaxFormPackage extends Package {

  protected $pkgHandle = 'ajax_form';
  protected $appVersionRequired = '5.5';
  protected $pkgVersion = '1.3';

  public function getPackageName() {
    return t("Ajax Form");
  }

  public function getPackageDescription() {
    return t("Adds ajax functionality to the built-in form block, so submitting a form does not reload the page (unless the form contains a file upload field).");
  }

  public function on_start() {
    //C5 only includes jquery.form.js when user is logged in.
    //This is safe to call even if C5 is including it, though, because it will catch the duplicate
    // and only output it once.
    View::getInstance()->addHeaderItem(Loader::helper('html')->javascript('jquery.form.js'));
  }

  public function install() {
    $pkg = parent::install();

    BlockType::installBlockTypeFromPackage('ajax_form', $pkg); //Thanks GregJoyce!
  }

}
