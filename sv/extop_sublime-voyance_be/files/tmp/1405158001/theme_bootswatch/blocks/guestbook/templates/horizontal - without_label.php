<?php   defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php   $c = Page::getCurrentPage(); ?>
    <h3><?php  echo $controller->title?></h3>
<?php   if($invalidIP) { ?>
    <div class="text-error"><p><?php  echo $invalidIP?></p></div>
<?php   } ?>

<?php  
$u = new User();
if (!$dateFormat) {
	$dateFormat = t('M jS, Y');
}
$posts = $controller->getEntries();
$bp = $controller->getPermissionObject(); 
$dh = Loader::helper('date');
?>
<ul class="unstyled">
    <?php  foreach($posts as $p) { ?>
        <?php   if($p['approved'] || $bp->canWrite()) { ?>
        <li class="guestBook-entry<?php   if ($c->getVersionObject()->getVersionAuthorUserName() == $u->getUserName()) {?> authorPost <?php   }?>">

            <p class="comment"><?php  echo nl2br($p['commentText'])?></p>

            <div class="badge">
                <?php  echo t('Posted by')?>
                <span class="userName">
                    <?php 
                    if( intval($p['uID']) ){
                        $ui = UserInfo::getByID(intval($p['uID']));
                        if (is_object($ui)) {
                            echo $ui->getUserName();
                        }
                    }else echo $p['user_name'];
                    ?>
                </span>
                <?php  echo t('on')?>
                <span class="contentDate">
                    <?php  echo $dh->date($dateFormat,strtotime($p['entryDate']));?>
                </span>
            </div>

            <?php   if($bp->canWrite()) { ?>
                <div class="btn-toolbar pull-right">
                    <div class="btn-group">
                        <a class="btn btn-success btn-mini" title="<?php  echo t('Edit')?>" href="<?php  echo $this->action('loadEntry')."&entryID=".$p['entryID'];?>#guestBookForm"><?php  echo t('Edit')?></a> |
                        <a class="btn btn-warning btn-mini" title="<?php  echo t('Remove')?>" href="<?php  echo $this->action('removeEntry')."&entryID=".$p['entryID'];?>" onclick="return confirm('<?php  echo t("Are you sure you would like to remove this comment?")?>');"><?php  echo t('Remove')?></a> |
                        <?php   if($p['approved']) { ?>
                            <a class="btn btn-danger btn-mini" title="<?php  echo t('Un-Approve')?>" href="<?php  echo $this->action('unApproveEntry')."&entryID=".$p['entryID'];?>"><?php  echo t('Un-Approve')?></a>
                        <?php   } else { ?>
                            <a class="btn btn-primary btn-mini" title="<?php  echo t('Approve')?>" href="<?php  echo $this->action('approveEntry')."&entryID=".$p['entryID'];?>"><?php  echo t('Approve')?></a>
                        <?php   } ?>
                    </div>
                </div>
            <?php   } ?>
            <span class="clearfix"></span>
            <hr>
        <li>
        <?php   } ?>
    <?php   } ?>
 </ul>

 <?php  if (isset($response)) { ?>
	<div class="alert alert-block">
	    <button type="button" class="close" data-dismiss="alert">&times;</button>
	    <?php  echo $response?>
	</div>
<?php   } ?>

<?php   if($controller->displayGuestBookForm) { ?>
	<?php  	
	if( $controller->authenticationRequired && !$u->isLoggedIn() ){ ?>
		<div><?php  echo t('You must be logged in to leave a reply.')?> <a href="<?php  echo View::url("/login","forward",$c->getCollectionID())?>"><?php  echo t('Login')?> &raquo;</a></div>
	<?php   }else{ ?>	
		<a name="guestBookForm-<?php  echo $controller->bID?>"></a>

		<div id="guestBook-formBlock-<?php  echo $controller->bID?>" class="well">

			<h4 class="guestBook-formBlock-title"><?php   echo t('Leave a Reply')?></h4>
			<form method="post" class="form-horizontal" action="<?php  echo $this->action('form_save_entry', '#guestBookForm-'.$controller->bID)?>">

                <?php   if(isset($Entry->entryID)) { ?>
                    <input type="hidden" name="entryID" value="<?php  echo $Entry->entryID?>" />
                <?php   } ?>

                    <?php   if(!$controller->authenticationRequired){ ?>
                        <div class="control-group <?php  echo (isset($errors['name'])?"error":"")?>">
                            <div class="controls">
                                <input placeholder="<?php  echo t('Name')?>" required="required" type="text" name="name" value="<?php  echo $Entry->user_name ?>" />
                                <?php  echo (isset($errors['name'])?"<span class=\"help-inline\">".$errors['name']."</span>":"")?>
                            </div>
                        </div>
                        <div class="control-group <?php  echo (isset($errors['email'])?"error":"")?>">
                            <div class="controls">
                                <input placeholder="<?php  echo t('Email')?>" required="required" type="email" name="email" value="<?php  echo $Entry->user_email ?>" />
                                <?php  echo (isset($errors['email'])?"<span class=\"help-inline\">".$errors['email']."</span>":"")?>
                            </div>
                         </div>
                    <?php   } ?>

                    <div class="control-group <?php  echo (isset($errors['commentText'])?"error":"")?>">
                        <div class="controls">
                            <textarea placeholder="<?php  echo t('Comment')?>" class="span4" rows="6" required="required" name="commentText"><?php  echo $Entry->commentText ?></textarea>
                            <?php  echo (isset($errors['commentText'])?"<br /><span class=\"help-inline\">".$errors['commentText']."</span>":"")?>
                        </div>
                    </div>
                    <?php 
                        if($controller->displayCaptcha) {
                            $captcha = Loader::helper('validation/captcha');?>
                            <div class="control-group captcha">
                                <div class="controls">
                                     <?php   $captcha->display(); ?>
                                     <?php  $captcha->showInput(); ?>
                                     <?php  echo isset($errors['captcha'])?'<span class="text-error">' . $errors['captcha'] . '</span>':''; ?>
                                </div>
                            </div>
                    <?php  } ?>

                    <div class="control-group">
                        <div class="controls">
                            <button type="submit" name="Post Comment" class="btn"><?php    echo t('Post Comment') ?></button>
                        </div>
                    </div>
                </div>
			</form>
		</div>
	<?php   } ?>
<?php   } ?>