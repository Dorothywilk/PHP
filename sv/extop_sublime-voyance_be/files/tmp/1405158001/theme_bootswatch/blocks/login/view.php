<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));

$c = Page::getCurrentPage();
$u = new User();
$loginURL= $this->url('/login', 'do_login' );

if ($u->isRegistered() && $hideFormUponLogin) { ?>
	<?php    
	if (Config::get("ENABLE_USER_PROFILES")) {
		$userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
	} else {
		$userName = $u->getUserName();
	}
	?>
	<span class="sign-in"><?php   echo t('Currently logged in as <b>%s</b>.', $userName)?> <a href="<?php   echo $this->url('/login', 'logout')?>"><?php   echo t('Sign Out')?></a></span>
<?php    } else { ?>	

	<form class="well" action='<?php  echo $loginURL?>' method="POST">
		<?php  if($returnToSamePage ){ 
			echo $form->hidden('rcID',$c->getCollectionID());
		} ?>
		<fieldset>
			<div id="legend"><legend class=""><?php  echo t('Login')?></legend></div>
			<div class="control-group">
				<!-- Username -->
				<label class="control-label"  for="username">
				<?php  if (USER_REGISTRATION_WITH_EMAIL_ADDRESS == true) {
					echo t('Email Address');
				} else {
					echo t('Username');
				} ?>
			</label>
				<div class="controls"><input type="text" id="username" name="username" value="<?php  echo $uName; ?>" placeholder="" class="input-xlarge"></div>
			</div>

			<div class="control-group">
				<!-- Password-->
				<label class="control-label" for="password"><?php  echo t('Password')?></label>
				<div class="controls"><input type="password" id="password" name="password" placeholder="" class="input-xlarge"></div>
			</div>


			<div class="control-group">
				<!-- Button -->
				<div class="controls"><button class="btn btn-success">Login</button></div>
			</div>
			
			<?php  if($showRegisterLink && ENABLE_REGISTRATION) {?>
				<a href="<?php  echo View::url('/register')?>" class="btn btn-link"><?php  echo $registerText?></a>
			<?php  } ?>
		</fieldset>
	</form>
<?php   } // end if not logged in  ?>