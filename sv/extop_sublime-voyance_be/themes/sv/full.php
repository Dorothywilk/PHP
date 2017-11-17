<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div id="menu" class="menu">
  <ul>
    <?php
    $menu = new Area('Header Nav');
    $menu->setBlockLimit(1);
    $menu->display($c);
    ?>
  </ul>
</div>

</div>
<div class="feature">
  <?php
  $feature = new Area('Feature');
  $feature->display($c);
  ?>
</div>
<div class="clear"></div>
<div class="container_row">
  <div class="mainzone">
    <?php
    $a = new Area('Main');
    $a->display($c);
    ?>
  </div>
</div>
<div class="clear"></div>
<div class="clear"></div>

<?
$this->inc('elements/footer.php');
