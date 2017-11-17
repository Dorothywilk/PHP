<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>
Right Sidebar
<div class="feature">
  <?php
  $feature = new Area('Feature');
  $feature->display($c);
  ?>
</div>

<div class="container_row">
  <div id="left_main">
    <?php
    $a = new Area('Main');
    $a->display($c);
    ?> 
  </div>
  <div id="right_sidebar">
    <?php
    $a = new Area('Sidebar');
    $a->display($c);
    ?>     

    <div class="clear"></div>
    <div class="clear"></div>
  </div>
</div>

<?php
$this->inc('elements/footer.php');
?>