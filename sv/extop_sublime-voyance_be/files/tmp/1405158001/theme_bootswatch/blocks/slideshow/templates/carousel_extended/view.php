<?php   defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="carousel_extended">
    <div id="carousel_boostrap_<?php  echo $bID; ?>" class="bgcolor_black carousel slide">
        <div class="row">
            <div class="span12">
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
                <div class="span8">
                    <div class="carousel-inner">
                        <?php 
                            $pos = 0;
                            $number = 0;
                            $ih = Loader::helper('image');
                            foreach($images as $imgInfo) {
                                $f = File::getByID($imgInfo['fID']);
                                $duration = intval($imgInfo['duration']);
                                $fadeDuration = intval($imgInfo['fadeDuration']);
                                $url = $f->getAttribute('url');
                                ?>
                                <div class="text-center item <?php  if ($pos == 0) { echo ' active' ; } ?>" data-slide-number="<?php  echo $number; ?>">
                                    <img src="<?php  echo $f->getRelativePath();?>" alt="<?php  echo $f->getTitle();?>">
                                </div>
                        <?php 	$pos++;
                                $number++;
                            }
                        ?>
                    </div>
                    <a class="left carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="prev">&lsaquo;</a>
                    <a class="right carousel-control" href="#carousel_boostrap_<?php  echo $bID; ?>" data-slide="next">&rsaquo;</a>
                </div>

                <div class="span3" id="carousel-text"></div>

                <div id="slide-content" style="display: none;">
                    <?php 
                        $pos = 0;
                        $number = 0;
                        $ih = Loader::helper('image');
                        foreach($images as $imgInfo) {
                            $f = File::getByID($imgInfo['fID']);
                            $duration = intval($imgInfo['duration']);
                            $fadeDuration = intval($imgInfo['fadeDuration']);
                            $url = $f->getAttribute('url');
                            ?>
                            <div id="slide-content-<?php  echo $number; ?>">
                                <h2><?php  echo $f->getTitle();?></h2>
                                <p><a class="link" href="<?php  echo $url;?>"><?php  echo $url;?></a></p>
                            </div>
                    <?php 	$pos++;
                            $number++;
                        }
                    ?>
                </div>
            </div>
        </div>
        <div class="row hidden-phone" id="slider-thumbs">
            <div class="offset1 span10">
                <ul class="thumbnails">
                    <?php 
                        $pos = 0;
                        $number = 0;
                        $ih = Loader::helper('image');
                        foreach($images as $imgInfo) {
                            $f = File::getByID($imgInfo['fID']);
                            $duration = intval($imgInfo['duration']);
                            $fadeDuration = intval($imgInfo['fadeDuration']);
                            $url = $f->getAttribute('url');
                            ?>
                             <li class="span2"><a class="thumbnail" id="carousel-selector-<?php  echo $number; ?>"><img src="<?php  echo $f->getRelativePath();?>" alt="<?php  echo $f->getTitle();?>"></a></li>
                    <?php 	$pos++;
                            $number++;
                        }
                    ?>

                    </li>
                </ul>
            </div>
        </div>

    </div><!-- /.carousel -->
</div>


<script type="text/javascript" language="javascript">
    $(document).ready(function() {
        $('#carousel_boostrap_<?php  echo $bID; ?>').carousel({
            interval: 5000
        })

        $('#carousel_boostrap_<?php  echo $bID; ?> #carousel-text').html($('#slide-content-0').html());

        //Handles the carousel thumbnails
        $('#carousel_boostrap_<?php  echo $bID; ?> [id^=carousel-selector-]').click( function(){
                var id_selector = $(this).attr("id");
                var id = id_selector.substr(id_selector.length -1);
                var id = parseInt(id);
                $('#carousel_boostrap_<?php  echo $bID; ?>').carousel(id);
        });


        // When the carousel slides, auto update the text
        $('#carousel_boostrap_<?php  echo $bID; ?>').on('slid', function (e) {
                var id = $(".active", e.target).index();
                $('#carousel-text').html($('#slide-content-'+id).html());
                $('.thumbnails a').removeClass("active");
                $('#carousel-selector-'+id).addClass("active");
        });

        $('#carousel_boostrap_<?php  echo $bID; ?>').trigger('slid');
    });
</script>
