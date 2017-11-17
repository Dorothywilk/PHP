<?php  defined('C5_EXECUTE') or die(_("Access Denied."));  ?>

<?php  $this->inc('elements/header.php'); ?>

   <body class="blog_entry">
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
					<div class="span12">
						<?php  $as = new Area('Sidebar'); $as->display($c); ?>
					</div>
				 </section>

				<section class="row-fluid">
					<div class="span12">
					<?php   $ai = new Area('Blog Post Header'); $ai->display($c); ?>
					</div>
				</section>
				<section class="row-fluid">
					<div class="span12">
						<h1><?php   echo $c->getCollectionName(); ?></h1>
						<p class="meta"><?php 
							echo t('Posted by %s on %s',
								$c->getVersionObject()->getVersionAuthorUserName(),
								$c->getCollectionDatePublic(DATE_APP_GENERIC_MDY_FULL));
						?></p>
					</div>
				</section>
				<section class="row-fluid" role="main">
					<div class="span12">
						<?php   $as = new Area('Main'); $as->display($c); ?>
					</div>
				</section>
				<section class="row-fluid">
					<div class="span12">
						<?php   $a = new Area('Blog Post More'); $a->display($c); ?>
					</div>
				</section>
				<section class="row-fluid">
					<div class="span12">
						<?php   $ai = new Area('Blog Post Footer'); $ai->display($c); ?>
					</div>
				</section>

				<hr/>
			</div>
			<?php  $this->inc('elements/footer.php'); ?>
		</div>
		<?php  $this->inc('elements/footer-c5.php'); ?>
   </body>
</html>
