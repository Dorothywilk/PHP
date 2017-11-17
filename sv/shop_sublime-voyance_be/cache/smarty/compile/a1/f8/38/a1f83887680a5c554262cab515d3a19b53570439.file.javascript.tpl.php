<?php /* Smarty version Smarty-3.1.19, created on 2015-08-10 15:37:03
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/themes/javascript.tpl" */ ?>
<?php /*%%SmartyHeaderCode:161073377055c8a8ff842225-69369773%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a1f83887680a5c554262cab515d3a19b53570439' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/themes/javascript.tpl',
      1 => 1439213182,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '161073377055c8a8ff842225-69369773',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'js_def' => 0,
    'k' => 0,
    'def' => 0,
    'js_files' => 0,
    'js_uri' => 0,
    'js_inline' => 0,
    'inline' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55c8a8ffca7655_73173150',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55c8a8ffca7655_73173150')) {function content_55c8a8ffca7655_73173150($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/tools/smarty/plugins/modifier.replace.php';
?>
<?php if (isset($_smarty_tpl->tpl_vars['js_def']->value)&&is_array($_smarty_tpl->tpl_vars['js_def']->value)&&count($_smarty_tpl->tpl_vars['js_def']->value)) {?>
<script type="text/javascript">
<?php  $_smarty_tpl->tpl_vars['def'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['def']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['js_def']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['def']->key => $_smarty_tpl->tpl_vars['def']->value) {
$_smarty_tpl->tpl_vars['def']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['def']->key;
?>
<?php if (!empty($_smarty_tpl->tpl_vars['k']->value)&&is_string($_smarty_tpl->tpl_vars['k']->value)) {?>
<?php if (is_bool($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = <?php echo var_export($_smarty_tpl->tpl_vars['def']->value,true);?>
;
<?php } elseif (is_int($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = <?php echo intval($_smarty_tpl->tpl_vars['def']->value);?>
;
<?php } elseif (is_float($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = <?php echo smarty_modifier_replace(floatval($_smarty_tpl->tpl_vars['def']->value),',','.');?>
;
<?php } elseif (is_string($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = '<?php echo strval($_smarty_tpl->tpl_vars['def']->value);?>
';
<?php } elseif (is_array($_smarty_tpl->tpl_vars['def']->value)||is_object($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['json_encode'][0][0]->jsonEncode($_smarty_tpl->tpl_vars['def']->value);?>
;
<?php } elseif (is_null($_smarty_tpl->tpl_vars['def']->value)) {?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = null;
<?php } else { ?>
var <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
 = '<?php echo addcslashes($_smarty_tpl->tpl_vars['def']->value,'\'');?>
';
<?php }?>
<?php }?>
<?php } ?>
</script>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['js_files']->value)&&count($_smarty_tpl->tpl_vars['js_files']->value)) {?>
<?php  $_smarty_tpl->tpl_vars['js_uri'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js_uri']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['js_files']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js_uri']->key => $_smarty_tpl->tpl_vars['js_uri']->value) {
$_smarty_tpl->tpl_vars['js_uri']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['js_uri']->key;
?>
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js_uri']->value;?>
"></script>
<?php } ?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['js_inline']->value)&&count($_smarty_tpl->tpl_vars['js_inline']->value)) {?>
<script type="text/javascript">
<?php  $_smarty_tpl->tpl_vars['inline'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['inline']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['js_inline']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['inline']->key => $_smarty_tpl->tpl_vars['inline']->value) {
$_smarty_tpl->tpl_vars['inline']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['inline']->key;
?>
<?php echo $_smarty_tpl->tpl_vars['inline']->value;?>

<?php } ?>
</script>
<?php }?><?php }} ?>
