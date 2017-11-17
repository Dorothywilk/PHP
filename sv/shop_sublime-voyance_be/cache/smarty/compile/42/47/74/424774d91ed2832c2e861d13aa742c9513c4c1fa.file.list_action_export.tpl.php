<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:06:51
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/request_sql/list_action_export.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15728902045592784be00137-76777496%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '424774d91ed2832c2e861d13aa742c9513c4c1fa' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/request_sql/list_action_export.tpl',
      1 => 1435661906,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15728902045592784be00137-76777496',
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
  'unifunc' => 'content_5592784c04d5b1_14997180',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5592784c04d5b1_14997180')) {function content_5592784c04d5b1_14997180($_smarty_tpl) {?>
<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['href']->value, ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" class="btn btn-default">
	<i class="icon-cloud-upload"></i> <?php echo $_smarty_tpl->tpl_vars['action']->value;?>

</a><?php }} ?>
