<?php   defined('C5_EXECUTE') or die("Access Denied."); ?>


<div id="carousel_boostrap_<?php  echo $bID; ?>" class="carousel slide">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<?php 
			$pos = 0;
			$ih = Loader::helper('image');
			foreach($images as $imgInfo) {?>
				<li data-target="#carousel_boostrap_<?php  echo $bID; ?>" data-slide-to="<?php  echo $pos;?>" class="<?php  if ($pos == 0) { echo 'active' ; } ?>"></li>
			<?php 
				$pos++;
			}?>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<?php 
			$pos = 0;
			$ih = Loader::helper('image');
			foreach($images as $imgInfo) {				
				$f = File::getByID($imgInfo['fID']);
				$duration = intval($imgInfo['duration']);
				$fadeDuration = intval($imgInfo['fadeDuration']);
				$url = $f->getAttribute('url');
				?>
				<div class="text-center item <?php  if ($pos == 0) { echo ' active' ; } ?>">
				  <div class="span12">
                      <img src="<?php  echo $f->getRelativePath();?>" alt="<?php  echo $f->getTitle();?>">
                      <div class="container">
                        <div class="carousel-caption">
                          <h3><a class="link" href="<?php  echo $url;?>"><?php  echo $f->getTitle();?></a></h3>
                        </div>
                      </div>
				  </div>
				</div>
		<?php 	$pos++;
		}?>	
	</div>
	<a class="left carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="prev">&lsaquo;</a>
    <a class="right carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="next">&rsaquo;</a>
</div><!-- /.carousel -->
	
