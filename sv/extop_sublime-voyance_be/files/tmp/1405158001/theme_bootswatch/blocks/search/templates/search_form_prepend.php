<?php   defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php   if (isset($error)) { ?>
	<div class="text-error"><?php  echo $error?><div/>
<?php   } ?>

<form action="<?php  echo $this->url( $resultTargetURL )?>" method="get" class="form-search">

	<?php   if( strlen($title)>0){ ?><legend><?php  echo $title?></legend><?php   } ?>
	
	<?php   if(strlen($query)==0){ ?>
	    <input name="search_paths[]" type="hidden" value="<?php  echo htmlentities($baseSearchPath, ENT_COMPAT, APP_CHARSET) ?>" />
	<?php   } else if (is_array($_REQUEST['search_paths'])) { 
		foreach($_REQUEST['search_paths'] as $search_path){ ?>
			<input name="search_paths[]" type="hidden" value="<?php  echo htmlentities($search_path, ENT_COMPAT, APP_CHARSET) ?>" />
	<?php    }
	} ?>

    <div class="input-prepend">
        <button type="submit" name="submit" class="btn"><?php  echo $buttonText?></button>
	    <input name="query" type="text" value="<?php  echo htmlentities($query, ENT_COMPAT, APP_CHARSET)?>" class="search-query" />
    </div>
</form>

<?php   
$tt = Loader::helper('text');
if ($do_search) {
	if(count($results)==0){ ?>
		<p class="text-info"><?php  echo t('There were no results found. Please try another keyword or phrase.')?></p>
	<?php   }else{ ?>
		<ul id="searchResults">
            <?php   foreach($results as $r) {
                $currentPageBody = $this->controller->highlightedExtendedMarkup($r->getBodyContent(), $query);?>
                <li>
                    <h4><a href="<?php  echo $r->getPath()?>"><?php  echo $r->getName()?></a></h4>
                    <p class="muted">
                        <?php   if ($r->getDescription()) { ?>
                            <?php    echo $this->controller->highlightedMarkup($tt->shortText($r->getDescription()),$query)?><br/>
                        <?php   } ?>
                        <?php   echo $currentPageBody; ?>
                    </p>
                    <small><a href="<?php    echo $r->getPath(); ?>" class="pageLink"><?php    echo $this->controller->highlightedMarkup($r->getPath(),$query)?></a></small>
                    <p><br/></p>
                </li>
            <?php   	}//foreach search result ?>
		</ul>
		
		<?php  
		if($paginator && strlen($paginator->getPages())>0){ ?>	
            <div class="pagination pagination-small">
                <ul>
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
                </ul>
            </div>
		<?php   }
	} //results found
} 
?>

