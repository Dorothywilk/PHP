<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>
<div class="red">
  <h1>Single Page</h1>
</div>

<div class="menu" id="menu">
  <ul>
    <?php
    $menu = new Area('Header Nav');
    $menu->setBlockLimit(1);
    $menu->display($c);
    ?>
  </ul>
</div>

<div class="feature">
  <?php
  $feature = new Area('Feature');
  $feature->display($c);
  ?>
</div>

<div class="container_row">
  <div class="mainzone">
    <?php
    print $innerContent;
    ?>
  </div>
  <div class="clear"></div>
</div>

<?php
$this->inc('elements/footer.php');
