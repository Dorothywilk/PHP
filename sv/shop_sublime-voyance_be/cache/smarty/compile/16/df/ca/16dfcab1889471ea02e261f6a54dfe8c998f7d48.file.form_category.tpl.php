<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:09:33
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/helpers/form/form_category.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1119714347559278edb4acf2-14286655%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16dfcab1889471ea02e261f6a54dfe8c998f7d48' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/helpers/form/form_category.tpl',
      1 => 1435661911,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1119714347559278edb4acf2-14286655',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'categories' => 0,
    'cat' => 0,
    'home_is_selected' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_559278f05bc676_94562779',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559278f05bc676_94562779')) {function content_559278f05bc676_94562779($_smarty_tpl) {?>
<?php if (count($_smarty_tpl->tpl_vars['categories']->value)&&isset($_smarty_tpl->tpl_vars['categories']->value)) {?>
	<script type="text/javascript">
		var inputName = '<?php echo addcslashes($_smarty_tpl->tpl_vars['categories']->value['input_name'],'\'');?>
';
		var use_radio = <?php if ($_smarty_tpl->tpl_vars['categories']->value['use_radio']) {?>1<?php } else { ?>0<?php }?>;
		var selectedCat = <?php echo intval(implode($_smarty_tpl->tpl_vars['categories']->value['selected_cat']));?>
;
		var selectedLabel = '<?php echo addcslashes($_smarty_tpl->tpl_vars['categories']->value['trads']['selected'],'\'');?>
';
		var home = '<?php echo addcslashes($_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['name'],'\'');?>
';
		var use_radio = <?php if ($_smarty_tpl->tpl_vars['categories']->value['use_radio']) {?>1<?php } else { ?>0<?php }?>;
		var use_context = <?php if (isset($_smarty_tpl->tpl_vars['categories']->value['use_context'])) {?>1<?php } else { ?>0<?php }?>;
	</script>
<div class="panel">
	<div class="category-filter panel-heading">
		<a href="#" id="collapse_all" class="btn btn-link"><i class="icon-collapse-alt icon-large"></i> <?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Collapse All'];?>
</a>
	 	<a href="#" id="expand_all" class="btn btn-link"><i class="icon-expand-alt icon-large"></i> <?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Expand All'];?>
</a> 
		<?php if (!$_smarty_tpl->tpl_vars['categories']->value['use_radio']) {?>
		<a href="#" id="check_all" class="btn btn-link"><i class="icon-check-sign"></i> <?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Check All'];?>
</a>
		<a href="#" id="uncheck_all" class="btn btn-link"><i class="icon-check-empty"></i> <?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Uncheck All'];?>
</a>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['categories']->value['use_search']) {?>
			<span>
				<?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['search'];?>
:&nbsp;
				<form method="post" id="filternameForm">
					<input type="text" name="search_cat" id="search_cat"/>
				</form>
			</span>
		<?php }?>
	</div>
	<?php $_smarty_tpl->tpl_vars['home_is_selected'] = new Smarty_variable(false, null, 0);?>
	<?php  $_smarty_tpl->tpl_vars['cat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categories']->value['selected_cat']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->key => $_smarty_tpl->tpl_vars['cat']->value) {
$_smarty_tpl->tpl_vars['cat']->_loop = true;
?>
		<?php if (is_array($_smarty_tpl->tpl_vars['cat']->value)) {?>
			<?php if ($_smarty_tpl->tpl_vars['cat']->value['id_category']!=$_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['id_category']) {?>
				<input <?php if (in_array($_smarty_tpl->tpl_vars['cat']->value['id_category'],$_smarty_tpl->tpl_vars['categories']->value['disabled_categories'])) {?>disabled="disabled"<?php }?> type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['categories']->value['input_name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['cat']->value['id_category'];?>
"/>
			<?php } else { ?>
				<?php $_smarty_tpl->tpl_vars['home_is_selected'] = new Smarty_variable(true, null, 0);?>
			<?php }?>
		<?php } else { ?>
			<?php if ($_smarty_tpl->tpl_vars['cat']->value!=$_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['id_category']) {?>
				<input <?php if (in_array($_smarty_tpl->tpl_vars['cat']->value,$_smarty_tpl->tpl_vars['categories']->value['disabled_categories'])) {?>disabled="disabled"<?php }?> type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['categories']->value['input_name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['cat']->value;?>
"/>
			<?php } else { ?>
				<?php $_smarty_tpl->tpl_vars['home_is_selected'] = new Smarty_variable(true, null, 0);?>
			<?php }?>
		<?php }?>
	<?php } ?>
	<ul id="categories-treeview" class="filetree">
		<li id="<?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['id_category'];?>
" class="hasChildren">
			<span class="folder">
				<?php if ($_smarty_tpl->tpl_vars['categories']->value['top_category']->id!=$_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['id_category']) {?>
					<input type="<?php if (!$_smarty_tpl->tpl_vars['categories']->value['use_radio']) {?>checkbox<?php } else { ?>radio<?php }?>"
							name="<?php echo $_smarty_tpl->tpl_vars['categories']->value['input_name'];?>
"
							value="<?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['id_category'];?>
"
							<?php if ($_smarty_tpl->tpl_vars['home_is_selected']->value) {?>checked="checked"<?php }?>
							onclick="clickOnCategoryBox($(this));"/>
						<span class="category_label"><?php echo $_smarty_tpl->tpl_vars['categories']->value['trads']['Root']['name'];?>
</span>
				<?php } else { ?>
					&nbsp;
				<?php }?>
			</span>
			<ul>
				<li><span class="placeholder">&nbsp;</span></li>
		  	</ul>
		</li>
	</ul>
	<?php if ($_smarty_tpl->tpl_vars['categories']->value['use_radio']) {?>
	<script type="text/javascript">
		searchCategory();
	</script>
	<?php }?>
</div>
<?php }?>
<?php }} ?>
