<?php  
defined('C5_EXECUTE') or die("Access Denied.");
?>
<div id="blog-index">
	<?php   
	$isFirst = true; //So first item in list can have a different css class (e.g. no top border)
	$excerptBlocks = ($controller->truncateSummaries ? 1 : null); //1 is the number of blocks to include in the excerpt
	$truncateChars = ($controller->truncateSummaries ? $controller->truncateChars : 0);
	foreach ($cArray as $cobj):
		$title = $cobj->getCollectionName();
		$date = $cobj->getCollectionDatePublic(DATE_APP_GENERIC_MDY_FULL);
		$author = $cobj->getVersionObject()->getVersionAuthorUserName();
		$link = $nh->getLinkToCollection($cobj);
		$firstClass = $isFirst ? 'first-entry' : '';
		
		$entryController = Loader::controller($cobj);
		if(method_exists($entryController,'getCommentCountString')) {
			$comments = $entryController->getCommentCountString('%s '.t('Comment'), '%s '.t('Comments'));
		}
		$isFirst = false;
	?>

        <h3><?php   echo $title; ?></h3>
        <p class="label pull-right"><?php  echo t('Posted by %s on %s',$author,$date); ?></p>
		<p class="excerpt">
			<?php  
			$a = new Area('Main');
			$a->disableControls();
			$a->display($cobj);
			?>
		</p>

		<blockquote><p><?php   echo $comments; ?></p></blockquote>
		<a class="btn btn-small btn-primary" href="<?php   echo $link; ?>"><?php   echo t('Read full post'); ?></a>

	    <hr/>
	<?php   endforeach; ?>
</div>


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
