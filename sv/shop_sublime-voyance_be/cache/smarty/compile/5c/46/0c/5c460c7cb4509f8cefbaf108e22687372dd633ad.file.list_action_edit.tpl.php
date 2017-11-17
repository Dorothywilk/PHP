<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:08:44
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/tax_rules/helpers/list/list_action_edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:800493505559278bc44cc46-72023414%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5c460c7cb4509f8cefbaf108e22687372dd633ad' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/tax_rules/helpers/list/list_action_edit.tpl',
      1 => 1435661947,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '800493505559278bc44cc46-72023414',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'id' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_559278bc5ddf27_15015952',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559278bc5ddf27_15015952')) {function content_559278bc5ddf27_15015952($_smarty_tpl) {?>
<a onclick="loadTaxRule('<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['id']->value, ENT_QUOTES, 'UTF-8', true);?>
'); return false;" href="#" class="btn btn-default">
	<i class="icon-pencil"></i> 
	<?php echo $_smarty_tpl->tpl_vars['action']->value;?>

</a><?php }} ?>
