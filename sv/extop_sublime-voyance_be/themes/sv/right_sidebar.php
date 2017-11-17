<?php defined('C5_EXECUTE') or die(_("Access Denied."));?>
<?php $this->inc('elements/header.php');?>

<body class="right_sidebar">
  <div id="layout">
    <div class="bootswatch">
      <!-- Accessibility -->
      <ul role="list" class="hidden">
        <li role="listitem"><a role="link" href="#header" title="Menu">Menu</a></li>
        <li role="listitem"><a role="link" href="#content" accesskey="s" title="Contenu">Content</a></li>
        <li role="listitem"><a role="link" href="#footer" title="Footer">Footer</a></li>
      </ul>

      <header id="header" role="heading" class="container">
        <?php
        $a = new Area('Header');
        $a->display($c);
        ?>
      </header>

      <div id="content" class="container">
        <section class="row-fluid" role="banner">
          <div class="span3">
            <?php
            $a = new Area('Sidebar');
            $a->display($c);
            ?>
          </div>
          <div class="span9" role="main">
            <?php
            $a = new Area('Main');
            $a->display($c);
            ?>
          </div>
        </section>
      </div>

    </div>
  </div>
  <?php $this->inc('elements/footer.php');?>
</body>
</html>
