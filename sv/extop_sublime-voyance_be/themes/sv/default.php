<?defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<body>
  <div id="layout">

    <!--      
          <div id="header">
            <div id="logo">
              <div class="logo_box">
                <a href="<?php echo DIR_REL?>/"><?php
    $block = Block::getByName('My_Site_Name');
    if ($block && $block->bID)
      $block->display();
    else
      echo SITE;
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
              
    -->

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

        <div class="feature">
          <?php
          $feature = new Area('Feature');
          $feature->display($c);
          ?>
        </div>
        <div class="clear"></div>

        <div class="container_row">
          <div id="left_sidebar">
            <?php
            $a = new Area('Sidebar');
            $a->display($c);
            ?>
          </div>
          <div id="right_main">
            <?php
            $a = new Area('Main');
            $a->display($c);
            ?>
          </div>
          <div class="clear"></div>
          <div class="clear"></div>
        </div>

      </div>
    </div>
  </div>

<?$this->inc('elements/footer.php');?>
</body>