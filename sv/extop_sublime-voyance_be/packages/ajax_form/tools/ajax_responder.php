<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));

//Workaround allows us to prevent the built-in form controller
// from sending redirect headers upon submission. Thanks GregJoyce!
class AjaxFormBlockController extends FormBlockController {
	public function preventRedirects(){
		$this->noSubmitFormRedirect = true;
		$this->redirectCID = 0; //just in case
	}
}

//NOTE: We are not checking permissions (like concrete/startup/process.php does for 'passthru' tasks).
//		I think this is okay because nobody would be able to get to the form to submit it
//		in the first place if they didn't have permissions on that block.
//		(and even if they somehow were able to submit the form on their own without
//		first being at the page with the form block on it, the validation token should
//		still prevent them from doing anything).

$valt = Loader::helper('validation/token');
if (!$valt->validate()) {
	$errors = true;
	$response = t('Invalid form submission -- please try again');
} else if (empty($_POST['bID']) || (intval($_POST['bID']) != $_POST['bID'])) {
	$errors = true;
	$response = t('Invalid form submission -- please try again');
} else {
	
	$b = Block::GetById($_POST['bID']);
	$bc = new AjaxFormBlockController($b);
	$bc->preventRedirects();
	
	$errors = array();
	try {
		$bc->action_submit_form();
	} catch (Exception $e) {
		$errors[] = $e->getMessage(); //Missing/Invalid qsID
	}
	
	$invalidIP = $bc->get('invalidIP');
	if (!empty($invalidIP)) {
		$errors[] = $invalidIP; //Not sure why this is error is handled separately
	}
	
	$field_errors = $bc->get('errors');
	if (is_array($field_errors)) {
		$errors = array_merge($errors, $field_errors);
	}
	
	if (empty($errors)) {
		$response = $bc->thankyouMsg;
	} else {
		$response = $bc->get('formResponse'); //error header
		foreach ($errors as $error) {
			$response .= '<div class="error">'.$error."</div>";
		}
	}
}

//Send response
$json = Loader::helper('json');
$jsonData = array(
	'success' => empty($errors),
	'message' => $response,
);
echo $json->encode( $jsonData );

exit;
