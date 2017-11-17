<?php  defined('C5_EXECUTE') or die(_("Access Denied."));  ?>

<?php  $this->inc('elements/header.php'); ?>

   <body class="full">
		<div class="bootswatch">
			<!-- Accessibility -->
			<ul role="list" class="hidden">
				<li role="listitem"><a role="link" href="#content" accesskey="s" title="Contenu">Content</a></li>
				<li role="listitem"><a role="link" href="#footer" title="Footer">Footer</a></li>
			</ul>
			<div id="content" class="container-fluid">
				<section class="row-fluid" role="main">
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
