<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/2000/REC-xhtml1-20000126/DTD/xhtml1-transitional.dtd">
<html lang="fr">
<head>
<!-- Site Header Content //-->
<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getStyleSheet('main.css')?>" />
<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getStyleSheet('typography.css')?>" />
 
<?php 
Loader::element('header_required');
?>
 
</head>
<body>
<div id="layout">
  <div id="header">
    <div id="logo">
    	<div class="logo_box">
        <a href="<?php  echo DIR_REL?>/"><?php  
				$block = Block::getByName('My_Site_Name');  
				if( $block && $block->bID ) $block->display();   
				else echo SITE;
				?></a></div>
        </div>
    <div class="search_container">
      <div class="search_box">
      	<?php 
         	$search = new Area('Search');
         	$search->display($c);
         	?>
	</div>
    </div>
  </div>
  <div id="body_container">
    <div id="body_container_inner">
      <div id="menu">
        <ul>
         <?php 
         	$menu = new Area('Header Nav');
         	$menu->setBlockLimit(1);
         	$menu->display($c);
         	?>
			</ul>
      </div>
      <div class="banner">
      <?php 
         	$header = new Area('Header');
         	$header->display($c);
         	?>
      </div>