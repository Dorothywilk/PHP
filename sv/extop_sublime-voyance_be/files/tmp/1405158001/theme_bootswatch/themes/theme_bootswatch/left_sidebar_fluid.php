<?php  defined('C5_EXECUTE') or die(_("Access Denied."));  ?>

<?php  $this->inc('elements/header.php'); ?>

   <body class="left_sidebar_fluid">
		<div class="bootswatch">
			<!-- Accessibility -->
			<ul role="list" class="hidden">
				<li role="listitem"><a role="link" href="#header" title="Menu">Menu</a></li>
				<li role="listitem"><a role="link" href="#content" accesskey="s" title="Contenu">Content</a></li>
				<li role="listitem"><a role="link" href="#footer" title="Footer">Footer</a></li>
			</ul>

			<header id="header" role="heading" class="container-fluid">
				<?php 
					 $a = new Area('Header');
					 $a->display($c);
				?>
			</header>

			<div id="content" class="container-fluid">
				<section class="row-fluid" role="main">
					<div class="span9">
						<?php 
							$a = new Area('Main');
							$a->display($c);
						?>
					</div>
					<div class="span3" role="banner">
						<?php 
							$a = new Area('Sidebar');
							$a->display($c);
						?>
					</div>
				</section>

				<hr/>
			</div>
			
			<?php  $this->inc('elements/footer.php'); ?>
		</div>
		
		<?php  $this->inc('elements/footer-c5.php'); ?>
   </body>
</html>
