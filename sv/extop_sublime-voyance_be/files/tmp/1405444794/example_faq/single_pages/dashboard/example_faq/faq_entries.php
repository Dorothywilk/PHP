<?php      defined('C5_EXECUTE') or die('Access Denied');

$form = loader::helper('form');
if ($this->controller->getTask() == 'update' || $this->controller->getTask() == 'edit' || $this->controller->getTask() == 'add') {

	$title = $this->controller->getTask() == 'add' ? t('Add') : t('Update');
	$df = Loader::helper('form/date_time');

	$task = 'add';
	$buttonText = t('Add FAQ Entry');

	if (is_object($faq)) {
		$faqTitle = $faq->getCollectionName();
		$faqDescription = $faq->getCollectionDescription();
		$faqDate = $faq->getCollectionDatePublic();
		$cParentID = $faq->getCollectionParentID();
		$ctID = $faq->getCollectionTypeID();
		$faqBody = '';
		$eb = $faq->getBlocks('Main');
		if (is_object($eb[0])) {
			$faqBody = $eb[0]->getInstance()->getContent();
		}
		$task = 'update';
		$buttonText = t('Update FAQ Entry');
	}
	echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper($buttonText, false, false, false);

	?>
		<form method="post" action="<?php     echo $this->action($task)?>" id="faq-form">
			<div class="ccm-pane-body">
				<fieldset>
					<?php     
						if ($this->controller->getTask() != 'add') {
							echo $form->hidden('faqID', $faq->getCollectionID());
						}
					?>
					<div class="clearfix">
						<?php     echo $form->label('faqTitle', t('Question'))?>
						<div class="input">
							<?php     echo $form->text('faqTitle', $faqTitle, array('style' => 'width: 730px'))?>
						</div>
					</div>
					<div class="clearfix">
						<?php     echo $form->label('faqDescription', t('Brief Answer'))?>
						<div class="input">
							<?php     echo $form->textarea('faqDescription', $faqDescription, array('style' => 'width: 730px; height: 100px'))?>
						</div>
					</div>
					<div class="clearfix">
						<?php     echo $form->label('cParentID', t('Section'))?>
						<div class="input">
							<?php     
								if (count($sections) == 0) {
									echo "<div>".t('No sections defined. Please create a page with the attribute "faq_entry" set to true.')."</div>";
								} else {
									echo "<div>".$form->select('cParentID', $sections, $cParentID)."</div>";
								}
							?>
						</div>
					</div>
					<div class="clearfix">
						<?php     echo $form->label('ctID', t('Page Type'))?>
						<div class="input">
							<?php     echo $form->select('ctID', $pageTypes, $ctID)?>
						</div>
					</div>
					<div class="clearfix">
						<?php     echo $form->label('faqDate', t('Date/Time'))?>
						<div class="input">
							<?php     echo $df->datetime('faqDate', $faqDate)?>
						</div>
					</div>

					<strong><?php     echo t('Full Answer')?></strong>
					<?php      Loader::element('editor_init') ?>
					<?php      Loader::element('editor_config') ?>
					<?php      Loader::element('editor_controls', array('mode'=>'full')) ?>
					<?php     echo $form->textarea('faqBody', $faqBody, array('style' => 'width: 100%; height: 150px', 'class' => 'ccm-advanced-editor'))?>

					<br/>

					<?php     
						Loader::model("attribute/categories/collection");
						$akt = CollectionAttributeKey::getByHandle('faq_tags');
						if (is_object($faq)) {
							$tvalue = $faq->getAttributeValueObject($akt);
						}
					?>


					<div class="faq-attributes clearfix">
						<?php     echo $akt->render('label') ?>
						<div class="input">
							<?php     echo $akt->render('form', $tvalue, true) ?>
						</div>
					</div>

					<br/>
					<div class="ccm-spacer">&nbsp;</div>
				</fieldset>
			</div>
			<div class='ccm-pane-footer'>
				<?php     
					$ih = Loader::helper('concrete/interface');
					print $ih->button(t('Cancel'), $this->url('/dashboard/example_faq/faq_entries'), 'left');
					print $ih->submit($buttonText, 'faq-form','right','primary');
				?>
			</div>
		</form>
	</div>

<?php     
} else {
	echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('FAQs'), false, false, false);
	?>
	<div class="ccm-pane-body">
		<h2><?php     echo t('New FAQ')?></h2>
		<a href="<?php     echo $this->action('add')?>"><?php     echo t('Click here to add a new FAQ Entry &gt;')?></a>
		<Br/><br/>

		<h2><?php     echo t('View/Search FAQs')?></h2>

		<form method="get" action="<?php     echo $this->action('view')?>">
			<?php     
				$sections[0] = '** All';
				asort($sections);
			?>

			<div class="clearfix">
				<strong><?php     echo $form->label('cParentID', t('Section'))?></strong>
				<div class='input'>
					<?php     echo $form->select('cParentID', $sections, $cParentID)?>
					<?php     echo $form->submit('submit', 'Search')?>
				</div>
			</div>
		</form>
		<br/>
		<?php     
			$nh = Loader::helper('navigation');
			if ($faqList->getTotal() > 0) {
				$faqList->displaySummary();
				?>

				<table border="0" class="ccm-results-list" cellspacing="0" cellpadding="0">
					<tr>
						<th class="<?php     echo $faqList->getSearchResultsClass('cvName')?>"><a href="<?php     echo $faqList->getSortByURL('cvName', 'asc')?>"><?php     echo t('Name')?></a></th>
						<th class="<?php     echo $faqList->getSearchResultsClass('cDateAdded')?>"><a href="<?php     echo $faqList->getSortByURL('cDateAdded', 'asc')?>"><?php     echo t('Date Added')?></a></th>
						<th class="<?php     echo $faqList->getSearchResultsClass('cvDatePublic')?>"><a href="<?php     echo $faqList->getSortByURL('cvDatePublic', 'asc')?>"><?php     echo t('Public Date')?></a></th>
						<th><?php     echo t('Page Owner')?></th>
						<th>&nbsp;</th>
					</tr>
					<?php     
					foreach($faqResults as $cobj) { ?>
						<tr>
							<td><a href="<?php     echo $nh->getLinkToCollection($cobj)?>"><?php     echo $cobj->getCollectionName()?></a></td>
							<td><?php     echo $cobj->getCollectionDateAdded()?></td>
							<td><?php     echo $cobj->getCollectionDatePublic()?></td>
							<td>
								<?php     
									$user = UserInfo::getByID($cobj->getCollectionUserID());
									print $user->getUserName();
								?>
							</td>
							<td><A href="<?php     echo $this->url('/dashboard/example_faq/faq_entries', 'edit', $cobj->getCollectionID())?>"><?php     echo t('Edit')?></a></td>
						</tr>
					<?php     
					}
					?>

				</table>
				<br/>
				<?php     
				$faqList->displayPaging();
			} else {
				print t('No FAQ entries found.');
			}
	?>
	</div>
	<div class='ccm-pane-footer'></div>
<?php      } ?>
<?php     echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(false)?>
