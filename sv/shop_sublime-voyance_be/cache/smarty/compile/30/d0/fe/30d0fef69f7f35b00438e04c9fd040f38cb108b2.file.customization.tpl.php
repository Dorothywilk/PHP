<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:06:52
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/products/customization.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17833829035592784c5a0b73-91929315%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '30d0fef69f7f35b00438e04c9fd040f38cb108b2' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/products/customization.tpl',
      1 => 1435661904,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17833829035592784c5a0b73-91929315',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
    'display_common_field' => 0,
    'bullet_common_field' => 0,
    'uploadable_files' => 0,
    'text_fields' => 0,
    'has_file_labels' => 0,
    'display_file_labels' => 0,
    'has_text_labels' => 0,
    'display_text_labels' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5592784ccf5e67_21679708',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5592784ccf5e67_21679708')) {function content_5592784ccf5e67_21679708($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['obj']->value->id)) {?>
<div id="product-customization" class="panel product-tab">
	<input type="hidden" name="submitted_tabs[]" value="Customization" />
	<h3><?php echo smartyTranslate(array('s'=>'Add or modify customizable properties'),$_smarty_tpl);?>
</h3>

	<?php if (isset($_smarty_tpl->tpl_vars['display_common_field']->value)&&$_smarty_tpl->tpl_vars['display_common_field']->value) {?>
		<div class="alert alert-info"><?php echo smartyTranslate(array('s'=>'Warning, if you change the value of fields with an orange bullet %s, the value will be changed for all other shops for this product','sprintf'=>$_smarty_tpl->tpl_vars['bullet_common_field']->value),$_smarty_tpl);?>
</div>
	<?php }?>

	<div class="form-group">
		<div class="col-lg-1"><span class="pull-right"><?php echo $_smarty_tpl->getSubTemplate ("controllers/products/multishop/checkbox.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('field'=>"uploadable_files",'type'=>"uploadable_files"), 0);?>
</span></div>
		<label class="control-label col-lg-3" for="uploadable_files">
			<?php echo $_smarty_tpl->tpl_vars['bullet_common_field']->value;?>

			<span class="label-tooltip" data-toggle="tooltip"
				title="<?php echo smartyTranslate(array('s'=>'Number of upload file fields to be displayed to the user.'),$_smarty_tpl);?>
">
				<?php echo smartyTranslate(array('s'=>'File fields'),$_smarty_tpl);?>

			</span>
		</label>
		<div class="col-lg-1">
			<input type="text" name="uploadable_files" id="uploadable_files" value="<?php echo htmlentities($_smarty_tpl->tpl_vars['uploadable_files']->value);?>
" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-1"><span class="pull-right"><?php echo $_smarty_tpl->getSubTemplate ("controllers/products/multishop/checkbox.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('field'=>"text_fields",'type'=>"text_fields"), 0);?>
</span></div>
		<label class="control-label col-lg-3" for="text_fields">
			<?php echo $_smarty_tpl->tpl_vars['bullet_common_field']->value;?>

			<span class="label-tooltip" data-toggle="tooltip"
				title="<?php echo smartyTranslate(array('s'=>'Number of text fields to be displayed to the user.'),$_smarty_tpl);?>
">
				<?php echo smartyTranslate(array('s'=>'Text fields'),$_smarty_tpl);?>

			</span>
		</label>
		<div class="col-lg-1">
			<input type="text" name="text_fields" id="text_fields" value="<?php echo htmlentities($_smarty_tpl->tpl_vars['text_fields']->value);?>
" />
		</div>
	</div>
	<?php if ($_smarty_tpl->tpl_vars['has_file_labels']->value) {?>
	<hr/>
	<div class="form-group">
		<label class="control-label col-lg-3">
			<?php echo smartyTranslate(array('s'=>'Define the label of the file fields'),$_smarty_tpl);?>

		</label>
		<div class="col-lg-9">
			<?php echo $_smarty_tpl->tpl_vars['display_file_labels']->value;?>

		</div>
	</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['has_text_labels']->value) {?>
	<hr/>
	<div class="form-group">
		<label class="control-label col-lg-3">
			<?php echo smartyTranslate(array('s'=>'Define the label of the text fields'),$_smarty_tpl);?>

		</label>
		<div class="col-lg-9">
			<?php echo $_smarty_tpl->tpl_vars['display_text_labels']->value;?>

		</div>
	</div>
	<?php }?>
	<div class="panel-footer">
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminProducts'), ENT_QUOTES, 'UTF-8', true);?>
" class="btn btn-default"><i class="process-icon-cancel"></i> <?php echo smartyTranslate(array('s'=>'Cancel'),$_smarty_tpl);?>
</a>
		<button type="submit" name="submitAddproduct" class="btn btn-default pull-right" disabled="disabled"><i class="process-icon-loading"></i> <?php echo smartyTranslate(array('s'=>'Save'),$_smarty_tpl);?>
</button>
		<button type="submit" name="submitAddproductAndStay" class="btn btn-default pull-right" disabled="disabled"><i class="process-icon-loading"></i> <?php echo smartyTranslate(array('s'=>'Save and stay'),$_smarty_tpl);?>
</button>
	</div>
</div>
<?php }?>
<?php }} ?>
