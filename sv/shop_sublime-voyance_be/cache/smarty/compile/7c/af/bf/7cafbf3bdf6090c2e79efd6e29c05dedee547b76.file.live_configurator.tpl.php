<?php /* Smarty version Smarty-3.1.19, created on 2015-08-10 16:11:11
         compiled from "C:\xampp\htdocs\w\wwwsubl\public_html\shop_sublime-voyance_be\modules\themeconfigurator\views\templates\hook\live_configurator.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2626155b601b5997423-20461024%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7cafbf3bdf6090c2e79efd6e29c05dedee547b76' => 
    array (
      0 => 'C:\\xampp\\htdocs\\w\\wwwsubl\\public_html\\shop_sublime-voyance_be\\modules\\themeconfigurator\\views\\templates\\hook\\live_configurator.tpl',
      1 => 1439209634,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2626155b601b5997423-20461024',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55b601b6044a07_92079772',
  'variables' => 
  array (
    'themes' => 0,
    'theme' => 0,
    'fonts' => 0,
    'key' => 0,
    'theme_font' => 0,
    'font' => 0,
    'advertisement_url' => 0,
    'advertisement_image' => 0,
    'advertisement_text' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55b601b6044a07_92079772')) {function content_55b601b6044a07_92079772($_smarty_tpl) {?>

<div id="gear-right">
	<i class="icon-cogs icon-2x icon-light"></i>
</div>
<form action="" method="post">
	<div id="tool_customization">
		<p>
			<?php echo smartyTranslate(array('s'=>'The customization tool allows you to make color and font changes in your theme.','mod'=>'themeconfigurator'),$_smarty_tpl);?>
<br /><br />
			<span>
				<?php echo smartyTranslate(array('s'=>'Only you can see this tool, because as you are currently connected to your back-office as an admin; your visitors will not see it.','mod'=>'themeconfigurator'),$_smarty_tpl);?>

			</span>
		</p>
		<div class="list-tools">
			<p id="theme-title">
			  <?php echo smartyTranslate(array('s'=>'Theme color','mod'=>'themeconfigurator'),$_smarty_tpl);?>
 
			  <i class="icon-caret-down pull-right"></i> 
			</p>
		</div>
		<?php if (isset($_smarty_tpl->tpl_vars['themes']->value)) {?>
			<ul id="color-box">
				<?php  $_smarty_tpl->tpl_vars['theme'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['theme']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['themes']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['theme']->key => $_smarty_tpl->tpl_vars['theme']->value) {
$_smarty_tpl->tpl_vars['theme']->_loop = true;
?>
					<li class="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['theme']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
">
						<div class="color-theme1 color1"></div>
						<div class="color-theme2 color2"> </div>
					</li>
				<?php } ?>
			</ul>
		<?php }?>
		<div class="list-tools">
			<p id="font-title">
			  <?php echo smartyTranslate(array('s'=>'Font','mod'=>'themeconfigurator'),$_smarty_tpl);?>
 
			  <i class="icon-caret-down pull-right"></i> 
			</p>
		</div>
		<div id="font-box">
			<p><?php echo smartyTranslate(array('s'=>'Title font','mod'=>'themeconfigurator'),$_smarty_tpl);?>
</p>
			<select name="font" id="font" class="font-list">
				<option value=""><?php echo smartyTranslate(array('s'=>'Choose a font','mod'=>'themeconfigurator'),$_smarty_tpl);?>
</option>
				<?php  $_smarty_tpl->tpl_vars['font'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['font']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['fonts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['font']->key => $_smarty_tpl->tpl_vars['font']->value) {
$_smarty_tpl->tpl_vars['font']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['font']->key;
?>
				<option value="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['key']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
"<?php if ($_smarty_tpl->tpl_vars['key']->value==$_smarty_tpl->tpl_vars['theme_font']->value) {?> selected="selected"<?php }?>><?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['font']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
</option>
				<?php } ?>
			</select>
		</div>
		<div class="btn-tools">
			<button type="button" class="btn btn-1" id="reset" name="resetLiveConfigurator"><?php echo smartyTranslate(array('s'=>'Reset','mod'=>'themeconfigurator'),$_smarty_tpl);?>
</button>
			<button type="submit" class="btn btn-2" name="submitLiveConfigurator"><?php echo smartyTranslate(array('s'=>'Save','mod'=>'themeconfigurator'),$_smarty_tpl);?>
</button>
		</div>
		<div id="block-advertisement">
			<a href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['advertisement_url']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
" onclick="return !window.open(this.href)">
				<img src="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['advertisement_image']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
" alt="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['advertisement_text']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
" />
			</a>
		</div>
	</div>
</form>
<?php }} ?>
