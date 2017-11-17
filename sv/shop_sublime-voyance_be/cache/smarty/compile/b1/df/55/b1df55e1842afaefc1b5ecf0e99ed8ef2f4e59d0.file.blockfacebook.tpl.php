<?php /* Smarty version Smarty-3.1.19, created on 2015-08-10 16:11:06
         compiled from "C:\xampp\htdocs\w\wwwsubl\public_html\shop_sublime-voyance_be\modules\blockfacebook\blockfacebook.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1590055b601aebdfaa6-36218815%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b1df55e1842afaefc1b5ecf0e99ed8ef2f4e59d0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\w\\wwwsubl\\public_html\\shop_sublime-voyance_be\\modules\\blockfacebook\\blockfacebook.tpl',
      1 => 1439209661,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1590055b601aebdfaa6-36218815',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55b601aec741c3_36335375',
  'variables' => 
  array (
    'facebookurl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55b601aec741c3_36335375')) {function content_55b601aec741c3_36335375($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['facebookurl']->value!='') {?>
<div id="fb-root"></div>
<div id="facebook_block" class="col-xs-4">
	<h4 ><?php echo smartyTranslate(array('s'=>'Follow us on Facebook','mod'=>'blockfacebook'),$_smarty_tpl);?>
</h4>
	<div class="facebook-fanbox">
		<div class="fb-like-box" data-href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['facebookurl']->value, ENT_QUOTES, 'UTF-8', true);?>
" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false">
		</div>
	</div>
</div>
<?php }?>
<?php }} ?>
