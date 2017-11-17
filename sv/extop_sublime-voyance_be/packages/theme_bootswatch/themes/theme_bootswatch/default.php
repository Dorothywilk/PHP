<? defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php'); ?>

   <body class="default">
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

			<div class="container">
				<section id="slidebar" class="row-fluid" role="banner">
					<div class="span12">
						<?php 
							$a = new Area('Sidebar');
							$a->display($c);
						?>
					</div>
				</section>

				<section id="content" class="row-fluid" role="main">
					<div class="span12">
						<?php 
							$a = new Area('Main');
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
