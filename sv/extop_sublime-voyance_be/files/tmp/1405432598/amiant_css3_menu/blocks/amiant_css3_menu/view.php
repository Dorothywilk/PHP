<?php   
	defined('C5_EXECUTE') or die("Access Denied.");
?>
	<div class="amiant-css3-menu-navigation-bar">
		
<?php  
	$aBlocks = $controller->generateNav();
	$c = Page::getCurrentPage();
	$containsPages = false;
	
	$nh = Loader::helper('navigation');
	
	//this will create an array of parent cIDs 
	$inspectC=$c;
	$selectedPathCIDs=array( $inspectC->getCollectionID() );
	$parentCIDnotZero=true;	
	while($parentCIDnotZero){
		$cParentID=$inspectC->cParentID;
		if(!intval($cParentID)){
			$parentCIDnotZero=false;
		}else{
			$selectedPathCIDs[]=$cParentID;
			$inspectC=Page::getById($cParentID);
		}
	} 	
	
	foreach($aBlocks as $ni) {
		$_c = $ni->getCollectionObject();
		$_c_parent = Page::getByID($_c->getCollectionParentID(), $version = 'RECENT');
		
		if (!$_c->getCollectionAttributeValue('exclude_nav') && !$_c_parent->getCollectionAttributeValue('do_not_display_subpages_in_nav') ) {
			
			
			$target = $ni->getTarget();
			if ($target != '') {
				$target = 'target="' . $target . '"';
			}
			if (!$containsPages) {
				// this is the first time we've entered the loop so we print out the UL tag
				echo("<ul class=\"navigation-menu nav\">");
			}
			
			$containsPages = true;
			
			$thisLevel = $ni->getLevel();
			if ($thisLevel > $lastLevel) {
				echo("<ul>");
			} else if ($thisLevel < $lastLevel) {
				for ($j = $thisLevel; $j < $lastLevel; $j++) {
					if ($lastLevel - $j > 1) {
						echo("</li></ul>");
					} else {
						echo("</li></ul></li>");
					}
				}
			} else if ($i > 0) {
				echo("</li>");
			}

			$pageLink = false;
			
			if ($_c->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
				$subPage = $_c->getFirstChild();
				if ($subPage instanceof Page) {
					$pageLink = $nh->getLinkToCollection($subPage);
				}
			}
			
			if (!$pageLink) {
				$pageLink = $ni->getURL();
			}
			
			$arrow = '';
			$nav_with_sub = '';
			if (($_c->getNumChildren() > 0) && ($_c->getCollectionID() != 1) && (!$_c->getCollectionAttributeValue('do_not_display_subpages_in_nav') )) {
				$arrow = '<span class="menu-arrow"></span>';
				$nav_with_sub = 'nav-with-sub';
			}

			if ($c->getCollectionID() == $_c->getCollectionID()) { 
				echo('<li class="nav-selected nav-path-selected '.$nav_with_sub.'"><a class="nav-selected nav-path-selected '.$nav_with_sub.'" ' . $target . ' href="' . $pageLink . '">' . $ni->getName() . $arrow . '</a>');
			} elseif ( in_array($_c->getCollectionID(),$selectedPathCIDs) && ($_c->getCollectionID() != HOME_CID) ) {
				echo('<li class="nav-path-selected '.$nav_with_sub.'"><a class="nav-path-selected '.$nav_with_sub.'" href="' . $pageLink . '" ' . $target . '>' . $ni->getName() . $arrow . '</a>');
			} else {
				echo('<li class="'.$nav_with_sub.'"><a class="'.$nav_with_sub.'" href="' . $pageLink . '" ' . $target . ' >' . $ni->getName() . $arrow . '</a>');
			}	
			$lastLevel = $thisLevel;
			$i++;
			
			
		}
	}
	
	$thisLevel = 0;
	if ($containsPages) {
		for ($i = $thisLevel; $i <= $lastLevel; $i++) {
			echo("</li></ul>");
		}
	}

?>

	</div>
