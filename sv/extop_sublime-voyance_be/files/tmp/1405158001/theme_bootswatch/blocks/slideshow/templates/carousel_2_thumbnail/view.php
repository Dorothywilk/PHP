<?php   defined('C5_EXECUTE') or die("Access Denied.");

$nbThumbnail = 1;
?>
 <div class="well carousel_2">
     <div id="carousel_boostrap_<?php  echo $bID; ?>" class="carousel slide">

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <?php 
                $pos = 0;
                $nb = 0;
                $ih = Loader::helper('image');
                foreach($images as $imgInfo) {
                    if ($pos==0) {?>
                        <li data-target="#carousel_boostrap_<?php  echo $bID; ?>" data-slide-to="<?php  echo $nb;?>" class="<?php  if ($nb == 0) { echo 'active' ; } ?>"></li>
                    <?php 
                        $nb++;
                        }
                    $pos++;
                    if ($pos> $nbThumbnail) $pos = 0;
                }?>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php 
                $pos = 0;
                $ih = Loader::helper('image');
                $first = true;
                foreach($images as $imgInfo) {
                    $f = File::getByID($imgInfo['fID']);
                    $duration = intval($imgInfo['duration']);
                    $fadeDuration = intval($imgInfo['fadeDuration']);
                    $url = $f->getAttribute('url');
                    if ($pos == 0) { ?>
                        <div class="item <?php  if ($first) { echo ' active' ; } ?>">
                            <div class="row-fluid">
                    <?php  } ?>

                                <div class="span6"><a class="thumbnail" href="<?php  echo $url;?>"><img src="<?php  echo $f->getRelativePath();?>" alt="<?php  echo $f->getTitle();?>"></a></div>

                    <?php  if ($pos == $nbThumbnail) { ?>
                            </div>
                          </div>
                    <?php  }

                    $pos++;
                    $first = false;

                    if ($pos > $nbThumbnail) { $pos = 0;  }
            }?>
        </div><!-- /.carousel -->

        <a class="left carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="prev">&lsaquo;</a>
        <a class="right carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="next">&rsaquo;</a>
    </div>
</div>

<script type="text/javascript" language="javascript">
    $(document).ready(function() {
        $('#carousel_boostrap_<?php  echo $bID; ?>').carousel({
            interval: 10000
        })
    });
</script>
	
