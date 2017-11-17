<?php 
defined('C5_EXECUTE') or die("Access Denied.");

//NOTE: This file must be include()'ed directly! Loading it via Loader::packageElement()
//      won't work because the variables we set here won't be available to you!

$survey = $controller;
$miniSurvey = new MiniSurvey($b);
$miniSurvey->frontEndMode = true;

//Clean up variables from controller so html is easier to work with...

$bID = intval($bID);
$qsID = intval($survey->questionSetId);
$formAction = $this->action('submit_form').'#'.$qsID;
$formDomId = "miniSurveyView{$bID}";
$hasFileUpload = false;

$questionsRS = $miniSurvey->loadQuestions($qsID, $bID);
$questions = array();
while ($questionRow = $questionsRS->fetchRow()) {
	$question = $questionRow;
	$question['input'] = $miniSurvey->loadInputType($questionRow, false);
	if ($questionRow['inputType'] == 'fileupload') {
		$hasFileUpload = true;
	}
	
	//Make type names common-sensical
	if ($questionRow['inputType'] == 'text') {
		$question['type'] = 'textarea';
	} else if ($questionRow['inputType'] == 'field') {
		$question['type'] = 'text';
	} else {
		$question['type'] = $questionRow['inputType']; //checkboxlist, select, radios, fileupload
	}
	
	//Construct label "for" (and misc. hackery for checkboxlist / radio lists)
	if ($question['type'] == 'checkboxlist') {
		$question['input'] = str_replace('<div class="checkboxPair">', '<div class="checkboxPair"><label>', $question['input']);
		$question['input'] = str_replace("</div>\n", "</label></div>\n", $question['input']); //include linebreak in find/replace string so we don't replace the very last closing </div> (the one that closes the "checkboxList" wrapper div that's around this whole question)
	} else if ($question['type'] == 'radios') {
		//Put labels around each radio items (super hacky string replacement -- this might break in future versions of C5)
		$question['input'] = str_replace('<div class="radioPair">', '<div class="radioPair"><label>', $question['input']);
		$question['input'] = str_replace('</div>', '</label></div>', $question['input']);
		
		//Make radioList wrapper consistent with checkboxList wrapper
		$question['input'] = "<div class=\"radioList\">\n{$question['input']}\n</div>\n";
	} else {
		$question['labelFor'] = 'for="Question' . $questionRow['msqID'] . '"';
	}
	
	$questions[] = $question;
}

//Prep thank-you message
$success = ($_GET['surveySuccess'] && $_GET['qsid'] == intval($qsID));
$thanksMsg = $survey->thankyouMsg;

//Collate all errors and put them into divs
$errorHeader = $formResponse;
$errors = is_array($errors) ? $errors : array();
if ($invalidIP) {
	$errors[] = $invalidIP;
}
$errorDivs = '';
foreach ($errors as $error) {
	$errorDivs .= '<div class="error">'.$error."</div>\n"; //It's okay for this one thing to have the html here -- it can be identified in CSS via parent wrapper div (e.g. '.formblock .error'). Doing it this way lets us keep a bunch of ugly php out of the markup, and also makes it match the output returned by the ajax handler (so styling is consistent between both kinds of responses).
}

//Prep captcha
$surveyBlockInfo = $miniSurvey->getMiniSurveyBlockInfoByQuestionId($qsID, $bID);
$captcha = $surveyBlockInfo['displayCaptcha'] ? Loader::helper('validation/captcha') : false;

//Localized labels
$translatedCaptchaLabel = t('Please type the letters and numbers shown in the image.');
$translatedSubmitLabel = t('Submit');
$translatedProcessingLabel = t('Processing...');


//Ajax submit code...
//(would be nice to put this in a separate js file, but C5 has problems loading custom template assets)
$isAjax = (empty($redirectCID) && !$hasFileUpload);
if ($isAjax) {
	$th = Loader::helper('concrete/urls');
	$ajax_url = $th->getToolsURL('ajax_responder', 'ajax_form');
	$unencoded_form_action = str_replace('&amp;', '&', $formAction); //5.4.2 fix
	parse_str(parse_url($unencoded_form_action, PHP_URL_QUERY), $formActionQuerystring); //so ugly...
	$ccm_token = $formActionQuerystring['ccm_token'];
	$form_processing_varname = "processing_form_{$bID}";
	$template_onsubmit_funcname = "form_{$bID}_onsubmit";
	$template_onsuccess_funcname = "form_{$bID}_onsuccess";
	$template_onerror_funcname = "form_{$bID}_onerror";
?>
<script type="text/javascript">
var <?php  echo $form_processing_varname; ?> = false;
$(document).ready(function() {
	$('#<?php  echo $formDomId; ?>').ajaxForm({
		'url': '<?php  echo $ajax_url; ?>',
		'dataType': 'json',
		'data': {
			'bID': <?php  echo $bID; ?>,
			'ccm_token': '<?php  echo $ccm_token; ?>'
		 },
		'beforeSubmit': function() {
			if (<?php  echo $form_processing_varname; ?>) {
				return false; //prevent re-submission while waiting for response
			}
			<?php  echo $form_processing_varname; ?> = true;
			<?php  echo $template_onsubmit_funcname; ?>('#<?php  echo $formDomId; ?>');
		},
		'success': function(response) {
			<?php  echo $form_processing_varname; ?> = false;
			if (response.success) {
				$('#<?php  echo $formDomId; ?>').clearForm();
				<?php  echo $template_onsuccess_funcname; ?>('#<?php  echo $formDomId; ?>', response.message);
			} else {
				<?php 
				/* CAPTCHA NOTES:
				 * We must update the captcha image upon form validation error, because the server will have generated
				 * a new image by now. Fortunately there is one Tools URL that always outputs the latest captcha image,
				 * so all we need to do is reload that URL in the image's src. Note that we append a new timestamp
				 * to that URL to prevent browser from showing a cached version of the old image (and that the timestamp
				 * is generated in javascript, not php).
				 */ ?>
				var timestamp = Math.round(new Date().getTime() / 1000).toString();
				$('#<?php  echo $formDomId; ?> .ccm-captcha-image').attr('src', '<?php  echo Loader::helper("concrete/urls")->getToolsURL("captcha"); ?>?nocache="' + timestamp);
				$('#<?php  echo $formDomId; ?> input[name="ccmCaptchaCode"]').val(''); //clear user's prior entry because it is now wrong
				<?php  echo $template_onerror_funcname; ?>('#<?php  echo $formDomId; ?>', response.message);
			}

		}
	});
});
</script>
<?php  }