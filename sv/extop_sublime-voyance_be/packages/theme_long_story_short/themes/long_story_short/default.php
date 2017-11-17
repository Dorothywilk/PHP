<?php
defined('C5_EXECUTE') or die("Access Denied.");?>
<!DOCTYPE html>
<html>
  <head>
    <?php Loader::element('header_required');?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?php echo $this->getThemePath();?>/css/buttons.css" rel="stylesheet" media="screen">
    <link href="<?php echo $this->getThemePath();?>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<?php echo $this->getThemePath();?>/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" type="text/css" href="<?php print $this->getStyleSheet('main.css');?>?v1.0.5" />
    <link rel="stylesheet" type="text/css" href="<?php print $this->getStyleSheet('typography.css');?>" />
    <?php
    $pageObject = Page::getCurrentPage();
    $po = new Permissions($pageObject);
    ?>
<?php if (!$po->canWrite()) {?>
      <script src="<?php echo $this->getThemePath();?>/js/bootstrap.min.js"></script>
      <script src="<?php echo $this->getThemePath();?>/js/bootstrap-transition.js"></script>
      <script src="<?php echo $this->getThemePath();?>/js/bootstrap-collapse.js"></script>
<?php }?>
    <script src="<?php echo $this->getThemePath();?>/js/jquery.scrollTo-1.4.3.1.min.js"></script>
    <script src="<?php echo $this->getThemePath();?>/js/jquery.scrollorama.js"></script>
    <script src="<?php echo $this->getThemePath();?>/js/jquery.easing.1.3.js"></script>
    <script src="<?php echo $this->getThemePath();?>/js/jquery.scrolldeck.js"></script>
    <script src="<?php echo $this->getThemePath();?>/js/jquery.ba-throttle-debounce.min.js"></script>
    <?php if (!$c->isEditMode()) {?>
      <script src="<?php echo $this->getThemePath();?>/js/custom.js"></script>
<?php }?>
  </head>

  <body data-spy="scroll" data-target=".navbar" <?php if ($po->canWrite()) {?>class="editmode"<?php }?>>
    <div class="container-fluid">
      <div class="navbar navbar-inverse <?php if (!$c->isEditMode()) {?>navbar-fixed-top<?php }?>">
        <div class="navbar-inner">
          <?php
          $useSiteNameStack = false;
          $stack = Stack::getByName('Site Name');
          if ($stack):
            $ax = Area::get($stack, STACKS_AREA_NAME);
            $totalBlocksInStack = $ax->getTotalBlocksInArea($stack);
            if ($totalBlocksInStack > 0):
              $useSiteNameStack = true;
            endif;
          endif;
          ?>
          <a class="brand" href="<?php echo DIR_REL?>/"><?php
            if ($useSiteNameStack) {
              $stack->display();
            } else {
              echo SITE;
            }
            ?></a>
<?php if (!$po->canWrite()) {?>
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a>
            <a class="btn btn-navbar darr">&darr;</a>
            <a class="btn btn-navbar uarr">&uarr;</a>
<?php }?>
          <div <?php if (!$po->canWrite()) {?>class="nav-collapse collapse"<?php }?>>
            <ul class="nav nav-pills pull-right">
              <?php
              $blocks = $c->getBlocks('Main');
              foreach ($blocks as $key => $b) {
                $blockNumber = $key + 1;
                $blockName = $b->getBlockName();
                if (!$blockName) {
                  $blockName = "Slide " . $blockNumber;
                }
                echo '<li><a href="#slide' . $blockNumber . '">' . $blockName . '</a></li>';
              }
              ?>
            </ul>
          </div>	
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12 slides-container">
          <?php
          $a = new Area('Main');
          $a->setBlockWrapperStart('<div class="slide" id="slide%4$s">', true);
          $a->setBlockWrapperEnd('</div>');
          $a->display($c);
          ?>

          <div <?php if (!$c->isEditMode()) {?>class="navbar-fixed-bottom"<?php }?> id="footer">
            <?php
            $a = new Area('Footer');
            if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
              $a->setBlockLimit(1);
              $a->display($c);
            } else {
              ?>
              &copy; <?php
              print date('Y') . ' ' . SITE . ' &sdot;  <a href="http://www.concrete5.org/" title="concrete5 content management system" target="_blank">Built with concrete5 CMS</a>';
              if (!$po->canWrite()) {
                echo ' &sdot; <a href="./index.php/login">Administration</a>';
              }
              ?>
<?php }?>
<?php if (!$po->canWrite()) {?>
              <div class="pull-right">
                <a class="btn uarr">&uarr;</a>
                <a class="btn darr">&darr;</a>
              </div>
<?php }?>
          </div>

        </div>
      </div>

    </div>

<?php Loader::element('footer_required');?>
  </body>
</html>