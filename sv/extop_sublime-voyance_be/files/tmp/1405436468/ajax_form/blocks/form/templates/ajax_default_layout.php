<?php 
defined('C5_EXECUTE') or die("Access Denied.");
require(DIR_PACKAGES . '/ajax_form/' . DIRNAME_ELEMENTS . '/form_template_header.php'); //Kind of like calling Loader::packageElement(), except variables set in the element are actually available to us here (not so with Loader::packageElement)
?>

<?php  if ($isAjax): ?>
<script type="text/javascript">
	function <?php  echo $template_onsubmit_funcname; ?>(form) {
		//This js code happens when user submits the form...
		$(form).find('#msg').hide();
		$(form).find('div.errors').hide().html('');
		$(form).find('input.submit').hide();
		$(form).find('div.indicator').show();
	}
	
	function <?php  echo $template_onsuccess_funcname; ?>(form, thanks) {
		//This js code happens after form is successfully processed...
		$(form).find('#msg').show();
		$(form).find('div.success').html(thanks).show();
		$(form).find('div.indicator').hide();
		$(form).find('div.fields').hide();
	}
	
	function <?php  echo $template_onerror_funcname; ?>(form, errors) {
		//This js code happens after form is rejected due to validation errors...
		$(form).find('#msg').show();
		$(form).find('div.errors').html(errors).show();
		$(form).find('div.indicator').hide();
		$(form).find('input.submit').show();
	}
</script>
<?php  endif; ?>

<form id="<?php  echo $formDomId; ?>" class="miniSurveyView" method="post" action="<?php  echo $formAction; ?>" <?php  echo ($hasFileUpload ? 'enctype="multipart/form-data"' : ''); ?>>
	
	<div id="msg" <?php  echo (!$success && !$errors) ? 'style="display: none;"' : ''; ?>>
		<div class="success" <?php  echo !$success ? 'style="display: none;"' : ''; ?>>
			<?php  echo $thanksMsg; ?>
		</div>

		<div class="errors ccm-errors" <?php  echo !$errors ? 'style="display: none;"' : ''; ?>>
			<?php  echo $errorHeader; ?>
			<?php  echo $errorDivs; /* each error wrapped in <div class="error">...</div> */ ?>
		</div>
	</div>
	

	<div class="fields">
		<table class="formBlockSurveyTable">
			<?php  foreach ($questions as $question): ?>
			<tr>
				<td valign="top" align="right" class="question">
					<label <?php  echo $question['labelFor']; ?>>
						<?php  echo $question['question']; ?>
						<?php  if ($question['required']): ?>
							<span class="required">*</span>
						<?php  endif; ?>
					</label>
				</td>
				<td valign="top" align="left">
					<?php  echo $question['input']; ?>
				</td>
			</tr>
			<?php  endforeach; ?>

			<?php  if ($captcha): ?>
			<tr>
				<td colspan="2">
					<label><?php  echo $translatedCaptchaLabel; ?></label>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<?php  $captcha->display(); ?>
					<br />
					<?php  $captcha->showInput(); ?>
				</td>
			</tr>
			<?php  endif; ?>

			<tr>
				<td>&nbsp;</td>
				<td>
					<input class="formBlockSubmitButton submit" name="Submit" type="submit" value="<?php  echo $translatedSubmitLabel; ?>" />
					<div class="indicator" style="display: none;">
						<img src="<?php  echo ASSETS_URL_IMAGES; ?>/throbber_white_16.gif" width="16" height="16" alt="" />
						<span><?php  echo $translatedProcessingLabel; ?></span>
					</div>
					<input name="qsID" type="hidden" value="<?php  echo $qsID; ?>" />
					<input name="pURI" type="hidden" value="<?php  echo $pURI; ?>" />
				</td>
			</tr>

		</table>

	</div><!-- .fields -->
	
</form>
