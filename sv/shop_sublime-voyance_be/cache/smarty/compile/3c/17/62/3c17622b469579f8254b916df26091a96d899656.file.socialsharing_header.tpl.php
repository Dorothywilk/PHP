<?php /* Smarty version Smarty-3.1.19, created on 2015-07-26 23:17:44
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/modules/socialsharing/views/templates/hook/socialsharing_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:73580798755b54e78793da3-69146775%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c17622b469579f8254b916df26091a96d899656' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/modules/socialsharing/views/templates/hook/socialsharing_header.tpl',
      1 => 1435662259,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '73580798755b54e78793da3-69146775',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'meta_title' => 0,
    'request' => 0,
    'shop_name' => 0,
    'meta_description' => 0,
    'link_rewrite' => 0,
    'cover' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55b54e788df265_65267729',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55b54e788df265_65267729')) {function content_55b54e788df265_65267729($_smarty_tpl) {?>
<meta property="og:title" content="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['meta_title']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
<meta property="og:url" content="<?php echo $_smarty_tpl->tpl_vars['request']->value;?>
" />
<meta property="og:type" content="product" />
<meta property="og:site_name" content="<?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>
" />
<meta property="og:description" content="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['meta_description']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
<meta property="og:email" content="" />
<meta property="og:phone_number" content="" />
<meta property="og:street-address" content="" />
<meta property="og:locality" content="" />
<meta property="og:country-name" content="" />
<meta property="og:postal-code" content="" />
<?php if (isset($_smarty_tpl->tpl_vars['link_rewrite']->value)&&isset($_smarty_tpl->tpl_vars['cover']->value)&&isset($_smarty_tpl->tpl_vars['cover']->value['id_image'])) {?>
<meta property="og:image" content="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['link_rewrite']->value,$_smarty_tpl->tpl_vars['cover']->value['id_image'],'large_default');?>
" />
<?php }?>
<?php }} ?>
