<?php  defined('C5_EXECUTE') or die(_("Access Denied."));  ?>

<?php  $this->inc('elements/header.php'); ?>

   <body class="view_fluid">
		<div class="bootswatch">
			<!-- Accessibility -->
			<ul role="list" class="hidden">
				<li role="listitem"><a role="link" href="#header" title="Menu">Menu</a></li>
				<li role="listitem"><a role="link" href="#content" accesskey="s" title="Contenu">Content</a></li>
				<li role="listitem"><a role="link" href="#footer" title="Footer">Footer</a></li>
			</ul>

			<div id="content" class="container-fluid">
				<section class="row-fluid" role="main">
					<div class="span12">
						<?php 
							print $innerContent;
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
