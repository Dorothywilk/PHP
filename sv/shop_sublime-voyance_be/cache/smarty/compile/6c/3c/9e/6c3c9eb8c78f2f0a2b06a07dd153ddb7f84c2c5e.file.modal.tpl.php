<?php /* Smarty version Smarty-3.1.19, created on 2015-06-30 11:06:24
         compiled from "/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/customer_threads/helpers/view/modal.tpl" */ ?>
<?php /*%%SmartyHeaderCode:157448914855927830803203-81275762%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6c3c9eb8c78f2f0a2b06a07dd153ddb7f84c2c5e' => 
    array (
      0 => '/var/sentora/hostdata/wwwsubl/public_html/shop_sublime-voyance_be/admin/themes/default/template/controllers/customer_threads/helpers/view/modal.tpl',
      1 => 1435661932,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '157448914855927830803203-81275762',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'id_customer_thread' => 0,
    'employees' => 0,
    'employee' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_55927830c79586_02733833',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55927830c79586_02733833')) {function content_55927830c79586_02733833($_smarty_tpl) {?>
<form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminCustomerThreads'), ENT_QUOTES, 'UTF-8', true);?>
&amp;viewcustomer_thread&amp;id_customer_thread=<?php echo intval($_smarty_tpl->tpl_vars['id_customer_thread']->value);?>
" method="post" enctype="multipart/form-data" class="form-horizontal">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title"><?php echo smartyTranslate(array('s'=>"Forward this discussion"),$_smarty_tpl);?>
</h4>
		</div>
		<div class="modal-body">
			<div class="row row-margin-bottom">
				<label class="control-label col-lg-6"><?php echo smartyTranslate(array('s'=>'Forward this discussion to an employee:'),$_smarty_tpl);?>
</label>
				<div class="col-lg-3">
					<select name="id_employee_forward">
						<option value="-1"><?php echo smartyTranslate(array('s'=>'-- Choose --'),$_smarty_tpl);?>
</option>
						<?php  $_smarty_tpl->tpl_vars['employee'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['employee']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['employees']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['employee']->key => $_smarty_tpl->tpl_vars['employee']->value) {
$_smarty_tpl->tpl_vars['employee']->_loop = true;
?>
							<option value="<?php echo $_smarty_tpl->tpl_vars['employee']->value['id_employee'];?>
"> <?php echo Tools::substr($_smarty_tpl->tpl_vars['employee']->value['firstname'],0,1);?>
. <?php echo $_smarty_tpl->tpl_vars['employee']->value['lastname'];?>
</option>
						<?php } ?>
						<option value="0"><?php echo smartyTranslate(array('s'=>'Someone else'),$_smarty_tpl);?>
</option>
					</select>
				</div>
			</div>
			<div id="message_forward_email" class="row row-margin-bottom" style="display:none">
				<label class="control-label col-lg-3"><?php echo smartyTranslate(array('s'=>'Email'),$_smarty_tpl);?>
</label>
				<div class="col-lg-3"> 
					<input type="text" name="email" />
				</div>
			</div>
			<div id="message_forward" style="display:none;">
				<div class="row row-margin-bottom">
					<label class="control-label col-lg-3"><?php echo smartyTranslate(array('s'=>'Comment:'),$_smarty_tpl);?>
</label>
					<div class="col-lg-7"> 
						<textarea name="message_forward" rows="6"><?php echo smartyTranslate(array('s'=>'You can add a comment here.'),$_smarty_tpl);?>
</textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo smartyTranslate(array('s'=>"Close"),$_smarty_tpl);?>
</button>
			<button type="submit" class="btn btn-primary" name="submitForward" disabled="disabled"><i class="icon-mail-forward"></i> <?php echo smartyTranslate(array('s'=>"Forward"),$_smarty_tpl);?>
</button>
		</div>
		</div>
	</div>
</div>
</form>
<script type="text/javascript">
	$("select[name='id_employee_forward']").on('change', function() {
		if ($(this).val() != '-1')
			$("button[name='submitForward']").prop('disabled', false);
		else
			$("button[name='submitForward']").prop('disabled', 'disabled');
	});
</script><?php }} ?>
