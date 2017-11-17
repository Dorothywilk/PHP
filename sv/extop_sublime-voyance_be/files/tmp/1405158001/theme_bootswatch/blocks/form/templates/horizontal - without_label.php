<?php  
/************************************************************
 * DESIGNERS: SCROLL DOWN! (IGNORE ALL THIS STUFF AT THE TOP)
 ************************************************************/
defined('C5_EXECUTE') or die("Access Denied.");
$survey = $controller;
$miniSurvey = new MiniSurvey($b);
$miniSurvey->frontEndMode = true;

//Clean up variables from controller so html is easier to work with...
$bID = intval($bID);
$qsID = intval($survey->questionSetId);
$formAction = $this->action('submit_form').'#'.$qsID;

$questionsRS = $miniSurvey->loadQuestions($qsID, $bID);
$questions = array();
while ($questionRow = $questionsRS->fetchRow()) {
	$question = $questionRow;
	$question['input'] = $miniSurvey->loadInputType($questionRow, false);
	
	//Make type names common-sensical
	if ($questionRow['inputType'] == 'text') {
		$question['type'] = 'textarea';
	} else if ($questionRow['inputType'] == 'field') {
		$question['type'] = 'text';
	} else {
		$question['type'] = $questionRow['inputType'];
	}
	
	//Construct label "for" (and misc. hackery for checkboxlist / radio lists)
	if ($question['type'] == 'checkboxlist') {
		$question['input'] = str_replace('<div class="checkboxPair">', '<div class="checkboxPair"><label class="checkbox">', $question['input']);
		$question['input'] = str_replace("</div>\n", "</label></div>\n", $question['input']); //include linebreak in find/replace string so we don't replace the very last closing </div> (the one that closes the "checkboxList" wrapper div that's around this whole question)
	} else if ($question['type'] == 'radios') {
		//Put labels around each radio items (super hacky string replacement -- this might break in future versions of C5)
		$question['input'] = str_replace('<div class="radioPair">', '<div class="radioPair"><label class="radio">', $question['input']);
		$question['input'] = str_replace('</div>\n', '</label></div>\n', $question['input']);
		
		//Make radioList wrapper consistent with checkboxList wrapper
		$question['input'] = "<div class=\"radioList\">\n{$question['input']}\n</div>\n";
	} else {
		$question['labelFor'] = 'for="Question' . $questionRow['msqID'] . '"';
	}
	
	//Remove hardcoded style on textareas
	if ($question['type'] == 'textarea') {
		$question['input'] = str_replace('style="width:95%"', '', $question['input']);
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
	$errorDivs .= '<div class="text-error">'.$error."</div>\n";
}

//Prep captcha
$surveyBlockInfo = $miniSurvey->getMiniSurveyBlockInfoByQuestionId($qsID, $bID);
$captcha = $surveyBlockInfo['displayCaptcha'] ? Loader::helper('validation/captcha') : false;

//Localized labels
$translatedCaptchaLabel = t('Please type the letters and numbers shown in the image.');
$translatedSubmitLabel = t('Submit');

/******************************************************************************
* DESIGNERS: CUSTOMIZE THE FORM HTML STARTING HERE...
*/?>

<div name="<?php   echo $survey->questionSetId ?>"></a></div>
<?php   if ($invalidIP) { ?>
    <div class="text-error"><?php  echo $invalidIP?></div>
<?php   } ?>

<form name="<?php  echo $survey->surveyName; ?>" enctype="multipart/form-data" id="form<?php   echo $bID; ?>" class="form-horizontal" method="post" action="<?php   echo $formAction ?>">

	<?php   if ($success): ?>
		<div class="text-success"><?php   echo $thanksMsg; ?></div>
	<?php   elseif ($errors): ?>
		<div class="text-error">
			<?php   echo $errorHeader; ?><?php   echo $errorDivs; ?>
		</div>
	<?php   endif; ?>

		
    <?php   foreach ($questions as $question): ?>
		<div class="control-group">
		        <?php   if ($question['required']) { ?>
		            <?php  $question['input'] =  str_replace('<input', '<input placeholder="'. $question['question'] . '" required="required"', $question['input']); ?>
		            <?php  $question['input'] =  str_replace('<textarea', '<textarea placeholder="'. $question['question'] . '" required="required"', $question['input']); ?>
		        <?php  } else { ?>
                    <?php  $question['input'] =  str_replace('<input', '<input placeholder="'. $question['question'].'"', $question['input']); ?>
                    <?php  $question['input'] =  str_replace('<textarea', '<textarea placeholder="'. $question['question'] . '"', $question['input']); ?>
		        <?php  } ?>
		        <?php  echo $question['input']; ?>
        </div>
	<?php   endforeach; ?>
	
	<?php   if ($captcha): ?>
		<div class="captcha">
            <?php   $captcha->display(); ?>
            <?php  $captcha->showInput(); ?>
		</div>
	<?php   endif; ?>

	<button type="submit" class="btn"><?php   echo $translatedSubmitLabel; ?></button>

	<input name="qsID" type="hidden" value="<?php   echo $qsID; ?>" />
	<input name="pURI" type="hidden" value="<?php   echo $pURI; ?>" />
</form>
