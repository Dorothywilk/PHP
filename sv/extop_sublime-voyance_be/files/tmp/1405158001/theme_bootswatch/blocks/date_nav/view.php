<?php   
defined('C5_EXECUTE') or die("Access Denied.");

global $c;
$textHelper = Loader::helper("text"); 
$dateHelper = Loader::helper("date"); 
?>

<div id="accordion<?php   echo $bID?>" class="accordion">
    <?php 
        $currentPageCID = intval($c->getCollectionID());

        //group entries into years and months
        $postsByDate=array();
        $currentYear=date('Y');
        $currentMonth=date('m');
        foreach($cArray as $page) {
            $year=date('Y', strtotime($page->getCollectionDatePublic()) );
            $month=date('m', strtotime($page->getCollectionDatePublic()) );
            $postsByDate[$year][$month][]=$page;
        }

        $monthDisplayFormat = ($controller->flatDisplay && count($postsByDate)>1) ? 'F Y' : 'F';

        //loop through years
        foreach($postsByDate as $year=>$postsByMonth ){
            if(count($postsByDate)>1 && !$controller->flatDisplay){
                 echo '<div class="accordion-group years">';
                 echo ' <div class="accordion-heading">';
                 echo '     <a class="accordion-toggle" data-toggle="collapse" data-parent="#year'.$year.'" href="#collapse'.$year. '">'.$year.'</a>';
                 echo ' </div>';
                 echo '</div>';
            }

            //print the months that have postings
            foreach($postsByMonth as $month=>$pagesArray){
                echo '<div id="collapse'.$year.'" class="accordion-group months">';
                    echo ' <div class="accordion-heading">';
                    echo '     <a class="accordion-toggle" data-toggle="collapse" data-parent="#month'.$month.'_'.$year.'" href="#collapse'.$month.'_'.$year.'">'.$dateHelper->date($monthDisplayFormat,mktime(0,0,0,$month,1,$year)).'</a>';
                    echo ' </div>';

                    echo '<div id="collapse'.$month.'_'.$year.'" class="accordion-body collapse">';

                        echo '<ul>';
                            $pagesPerNodeCount=0;
                            foreach($pagesArray as $page) {
                                if($currentPageCID==$page->getCollectionId()) $currentPageFound=1;

                                $pagesPerNodeCount++;
                                $title = $page->getCollectionName();
                                $selected=( $page->getCollectionId()==$c->getCollectionID() ) ? 'selected':'';

                                if($pagesPerNodeCount>$this->display_limit && $this->display_limit!=0){
                                    echo '<li><a href="/contents/">...</a></li>';
                                    break;
                                }

                                echo '<li class="'.$selected.' pageId'.intval($page->getCollectionId()).'" >';

                                    echo '<a class="'.$read.'" href="'.Loader::helper('navigation')->getLinkToCollection($page).'">';
                                        if(!$controller->truncateTitles){
                                            echo $title;
                                        }else{
                                            echo $textHelper->shorten($title,$controller->truncateTitleChars);
                                        }
                                    echo '</a>';

                                    if($controller->showDescriptions){ ?>
                                        <div class="pageSummary">
                                            <?php    if(!$controller->truncateSummaries){
                                                echo $page->getCollectionDescription();
                                            }else{
                                                echo $textHelper->shorten($page->getCollectionDescription(),$controller->truncateChars);
                                            } ?>
                                        </div>
                                    <?php  }

                                echo '</li>';
                            }
                        echo '</ul>';

                    echo '</div>';
                echo '</div>';
            }

            if(count($postsByDate)>1 && !$controller->flatDisplay){
                 echo '</div>';
            }
        }
    ?>
</div>
