<?php /* Smarty version Smarty-3.1.19, created on 2015-08-10 16:11:09
         compiled from "C:\xampp\htdocs\w\wwwsubl\public_html\shop_sublime-voyance_be\themes\default-bootstrap\modules\productcomments\productcomments_reviews.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1165555b601b294c5d1-31664968%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb8d3832da3748b157d0d3ba84883f0d2a554d3b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\w\\wwwsubl\\public_html\\shop_sublime-voyance_be\\themes\\default-bootstrap\\modules\\productcomments\\productcomments_reviews.tpl',
      1 => 1439209561,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1165555b601b294c5d1-31664968',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55b601b2ddc665_24846927',
  'variables' => 
  array (
    'nbComments' => 0,
    'averageTotal' => 0,
    'ratings' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55b601b2ddc665_24846927')) {function content_55b601b2ddc665_24846927($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['nbComments']->value)&&$_smarty_tpl->tpl_vars['nbComments']->value>0) {?>
	<div class="comments_note" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
		<div class="star_content clearfix">
			<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']["i"])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]);
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['name'] = "i";
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'] = (int) 0;
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop'] = is_array($_loop=5) ? count($_loop) : max(0, (int) $_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'] = ((int) 1) == 0 ? 1 : (int) 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop'];
if ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'] < 0)
    $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'] = max($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'] > 0 ? 0 : -1, $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop'] + $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start']);
else
    $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'] = min($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'] > 0 ? $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop'] : $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop']-1);
if ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['total'] = min(ceil(($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'] > 0 ? $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['loop'] - $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'] : $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start']+1)/abs($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'])), $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['max']);
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']["i"]['total']);
?>
				<?php if ($_smarty_tpl->tpl_vars['averageTotal']->value<=$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']) {?>
					<div class="star"></div>
				<?php } else { ?>
					<div class="star star_on"></div>
				<?php }?>
			<?php endfor; endif; ?>
            <meta itemprop="worstRating" content = "0" />
            <meta itemprop="ratingValue" content = "<?php if (isset($_smarty_tpl->tpl_vars['ratings']->value['avg'])) {?><?php echo htmlspecialchars(round($_smarty_tpl->tpl_vars['ratings']->value['avg'],1), ENT_QUOTES, 'UTF-8', true);?>
<?php } else { ?><?php echo htmlspecialchars(round($_smarty_tpl->tpl_vars['averageTotal']->value,1), ENT_QUOTES, 'UTF-8', true);?>
<?php }?>" />
            <meta itemprop="bestRating" content = "5" />
		</div>
		<span class="nb-comments"><span itemprop="reviewCount"><?php echo $_smarty_tpl->tpl_vars['nbComments']->value;?>
</span> <?php echo smartyTranslate(array('s'=>'Review(s)','mod'=>'productcomments'),$_smarty_tpl);?>
</span>
	</div>
<?php }?>
<?php }} ?>
