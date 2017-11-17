<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:10:59
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/helpers/list/list_action_view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:72206480955927943694350-59416438%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '36a4900ad6f30d798566dd41ea7bb08874eb0445' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/helpers/list/list_action_view.tpl',
      1 => 1435661912,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '72206480955927943694350-59416438',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'href' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55927943ded4a3_24788861',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55927943ded4a3_24788861')) {function content_55927943ded4a3_24788861($_smarty_tpl) {?>
<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['href']->value, ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['action']->value, ENT_QUOTES, 'UTF-8', true);?>
" >
	<i class="icon-search-plus"></i> <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['action']->value, ENT_QUOTES, 'UTF-8', true);?>

</a><?php }} ?>
