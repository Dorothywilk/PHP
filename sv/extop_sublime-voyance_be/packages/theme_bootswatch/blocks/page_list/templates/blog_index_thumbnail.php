<?php   
defined('C5_EXECUTE') or die("Access Denied.");
$textHelper = Loader::helper("text");
$imgHelper = Loader::Helper('image');
// now that we're in the specialized content file for this block type,
// we'll include this block type's class, and pass the block to it, and get
// the content

if (count($cArray) > 0) { ?>
    <ul class="thumbnails">
        <?php  for ($i = 0; $i < count($cArray); $i++ ) {
            if ($i > 2) { ?>
                </ul><ul class="thumbnails">
            <?php  }

            $cobj = $cArray[$i];
            $target = $cobj->getAttribute('nav_target');

            $title = $cobj->getCollectionName();
            $date = $cobj->getCollectionDatePublic('M j, Y'); ?>

            <li class="span4">
                <div class="thumbnail">
                    <?php  $ts = $cobj->getBlocks('Thumbnail Image');
                    if (is_object($ts[0])) { ?>
                        <a <?php    if ($target != '') { ?> target="<?php   echo $target?>" <?php    } ?> href="<?php   echo $nh->getLinkToCollection($cobj)?>">
                        <?php  $tsb = $ts[0]->getInstance();
                        $thumb = $tsb->getFileObject();
                        if($thumb){ $imgHelper->outputThumbnail($thumb, 220, 220, $title); } ?>
                        </a>
                    <?php  } ?>

                    <div class="caption">
                        <h3><?php   echo $title?></h3>
                        <p>
                            <?php  if(!$controller->truncateSummaries){
                                echo $cobj->getCollectionDescription();
                            } else {
                                echo $textHelper->wordSafeShortText($cobj->getCollectionDescription(),$controller->truncateChars);
                            } ?>
                        </p>
                        <p class="muted"><small><?php   echo $date; ?></small></p>
                        <a class="btn btn-small btn-primary" <?php    if ($target != '') { ?> target="<?php   echo $target?>" <?php    } ?> href="<?php   echo $nh->getLinkToCollection($cobj)?>"><?php   echo t('Read full post'); ?></a>
                    </div>
                </div>
            </li>
        <?php  } ?>
    </ul>
<?php  } ?>

<?php   if ($paginate && $num > 0 && is_object($pl)): ?>
    <div class="pagination pagination-small pagination-centered">
        <ul>
            <?php 
            $summary = $pl->getSummary();
            if ($summary->pages > 1):
                $paginator = $pl->getPagination();
            ?>
                <?php  if ($paginator->hasPreviousPage() != '') { ?>
                    <li><?php  echo str_replace('ltgray', '', $paginator->getPrevious('&laquo; ' . t('Previous'))) ?></li>
                <?php  } else { ?>
                    <li class="disabled"><a href="#"><?php  echo '&laquo; ' . t('Previous') ?></a></li>
                <?php  } ?>

                <?php 
                    $paginators = $paginator->getPages();
                    $paginators = str_replace('<span', '<li', $paginators);
                    $paginators = str_replace('</span>', '</li>', $paginators);
                    $paginators = str_replace('<li class="currentPage active numbers">', '<li class="active"><a href="#">', $paginators);
                    $paginators = str_replace('</li>', '</a></li>', $paginators);
                    $paginators = str_replace('</a></a>', '</a>', $paginators);
                    $paginators = str_replace('<strong>', '', $paginators);
                    $paginators = str_replace('</strong>', '', $paginators);
                    $paginators = str_replace('<li class=" numbers">', '<li>', $paginators);
                    $paginators = str_replace('ltgray', '', $paginators);
                    echo $paginators;
                ?>

                <?php  if ($paginator->hasNextPage() != '') { ?>
                    <li><?php  echo str_replace('ltgray', '', $paginator->getNext(t('Next') . ' &raquo;')) ?></li>
               <?php  } else { ?>
                    <li class="disabled"><a href="#"><?php  echo t('Next') . ' &raquo;' ?></a></li>
               <?php  } ?>

            <?php   endif; ?>
        </ul>
    </div>
<?php   endif; ?>

<?php   if(!$previewMode && $controller->rss):
    $btID = $b->getBlockTypeID();
    $bt = BlockType::getByID($btID);
    $uh = Loader::helper('concrete/urls');
    $rssUrl = $controller->getRssUrl($b, 'blog_rss');
    $rssIcon = $uh->getBlockTypeAssetsURL($bt, 'rss.png');
    $rssTitle = $controller->rssTitle; ?>

    <div class="rss">
        <img src="<?php   echo $rssIconSrc ?>" width="14" height="14" alt="<?php   echo t('RSS Icon') ?>" title="<?php   echo t('RSS Feed') ?>" />&nbsp;<a href="<?php   echo $rssUrl ?>" target="_blank"><p class="label"><?php  echo $rssTitle ?> </p></a>
        <p class="muted"><small><?php  echo $rssDescription ?></small></p>
    </div>
    <link href="<?php   echo BASE_URL.$rssUrl ?>" rel="alternate" type="application/rss+xml" title="<?php   echo $rssTitle; ?>" />
<?php   endif; ?>
