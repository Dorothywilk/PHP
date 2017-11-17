<?php          
defined('C5_EXECUTE') or die(_("Access Denied.")); 
class DashboardPagesTemplateThemeController extends Controller {

	public function view() {
	    $db = Loader::db();
        $v = View::getInstance();
        $r = $db->execute("SELECT * FROM bootswatch_theme");
        while($row = $r->fetchrow()){
            $this->set('templateName', $row['template_name']);
            $this->set('useTypography', $row['template_typography']);
        }
   	}

    public function saveTemplateTheme() {
        if (Loader::helper('validation/token')->validate('saveTemplateTheme')) {
            $db = Loader::db();
            $qc = ("TRUNCATE TABLE bootswatch_theme");
            $db->Execute($qc);
            $args = array(
                'template_name' => $this->post('templateNameSelect'),
                'template_typography'=> $this->post('useTypography')
            );
            $qi = ("INSERT INTO bootswatch_theme (template_name, template_typography) VALUES (?,?)");
            $db->Execute($qi,$args);

            $this->set('message', t('Template Theme updated.'));
        }
        $this->view();
    }
	
	
	
}