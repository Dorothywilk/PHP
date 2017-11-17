<?php        defined('C5_EXECUTE') or die("Access Denied."); ?>
<!DOCTYPE html>
<html>
  <head>
	<?php       Loader::element('header_required'); ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?php        echo $this->getThemePath(); ?>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<?php        echo $this->getThemePath(); ?>/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="<?php       print $this->getStyleSheet('main.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?php       print $this->getStyleSheet('typography.css'); ?>" />
	<?php       $pageObject = Page::getCurrentPage(); $po = new Permissions($pageObject); ?>
	<?php        if (!$po->canWrite()) { ?>
    <script src="<?php        echo $this->getThemePath(); ?>/js/bootstrap.min.js"></script>
    <script src="<?php        echo $this->getThemePath(); ?>/js/bootstrap-transition.js"></script>
    <script src="<?php        echo $this->getThemePath(); ?>/js/bootstrap-collapse.js"></script>
	<?php        } ?>
  </head>

  <body data-spy="scroll" data-target=".navbar" <?php       if ($po->canWrite()){ ?>class="editmode"<?php        } ?>>
  	<div class="container-fluid">
  		<div class="navbar navbar-inverse <?php        if (!$c->isEditMode()) { ?>navbar-fixed-top<?php       } ?>">
  			<div class="navbar-inner">
  				<a class="brand" href="<?php       echo DIR_REL?>/"><?php       $block = Block::getByName('My_Site_Name'); if($block && $block->bID) $block->display(); else echo SITE;?></a>
			</div>
		</div>
  		<div class="row-fluid">
			<div class="span12">
				<div class="std-container">
			    	<?php      
						print $innerContent;
					?>

					<div <?php        if (!$c->isEditMode()) { ?>class="navbar-fixed-bottom"<?php       } ?> id="footer">
						<?php      
					    $a = new Area('Footer');
					    if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
					        $a->setBlockLimit(1);
					        $a->display($c);
					    } else { ?>
					        &copy; <?php       print date('Y') . ' ' . SITE; ?>
					    <?php       } ?>
					</div>
				</div>
			</div>
		</div>

	</div>

    <?php       Loader::element('footer_required'); ?>
  </body>
</html>