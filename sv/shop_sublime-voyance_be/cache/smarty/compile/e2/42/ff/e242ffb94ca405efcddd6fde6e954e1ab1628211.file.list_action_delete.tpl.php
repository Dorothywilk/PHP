<?php /* Smarty version Smarty-3.1.19, created on 2015-08-10 16:09:30
         compiled from "C:\xampp\htdocs\w\wwwsubl\public_html\shop_sublime-voyance_be\admin130294wjf\themes\default\template\helpers\list\list_action_delete.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1628355b6018677e2d8-29116738%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e242ffb94ca405efcddd6fde6e954e1ab1628211' => 
    array (
      0 => 'C:\\xampp\\htdocs\\w\\wwwsubl\\public_html\\shop_sublime-voyance_be\\admin130294wjf\\themes\\default\\template\\helpers\\list\\list_action_delete.tpl',
      1 => 1439209181,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1628355b6018677e2d8-29116738',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55b601869faee5_62794272',
  'variables' => 
  array (
    'href' => 0,
    'confirm' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55b601869faee5_62794272')) {function content_55b601869faee5_62794272($_smarty_tpl) {?>
<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['href']->value, ENT_QUOTES, 'UTF-8', true);?>
"<?php if (isset($_smarty_tpl->tpl_vars['confirm']->value)) {?> onclick="if (confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
')){return true;}else{event.stopPropagation(); event.preventDefault();};"<?php }?> title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['action']->value, ENT_QUOTES, 'UTF-8', true);?>
" class="delete">
	<i class="icon-trash"></i> <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['action']->value, ENT_QUOTES, 'UTF-8', true);?>

</a><?php }} ?>
