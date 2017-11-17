<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	// basically a stub that includes some other files
	$u = new User();
	$uID=$u->getUserID();
?>

<div class="poll well">
    <?php  if ($controller->hasVoted()) { ?>
            <h3><?php  echo t("You've voted on this survey.")?></h3>

            <?php  //available chart colors are duplicated in content/surveys.php
            $availableChartColors=array('00CCdd','cc3333','330099','FF6600','9966FF','dd7700','66DD00','6699FF','FFFF33','FFCC33','00CCdd','cc3333','330099','FF6600','9966FF','dd7700','66DD00','6699FF','FFFF33','FFCC33');
            $options = $controller->getPollOptions();
            $optionNames=array();
            $optionResults=array();
            $graphColors=array();
            $i = 1;
            $totalVotes=0;
            foreach($options as $opt) {
                $optionNamesAbbrev[] = $i;
                $optionResults[]=$opt->getResults();
                $i++;
                $graphColors[]=array_pop($availableChartColors);
                $totalVotes+=intval($opt->getResults());
            }
            foreach ($optionResults as &$value){
                if($totalVotes) {
                    $value=round($value/$totalVotes*100,0);
                }
            }
            ?>
            <hr/>
            <div id="surveyQuestion"><?php  echo t("Question")?>: <?php  echo $controller->getQuestion()?></div>

            <div id="surveyResults" class="span8">
                <table class="table table-striped table-hover">
                    <?php  	$i = 1;
                        foreach($options as $opt) { ?>
                            <tr>
                                <td><div class="surveySwatch" style="background:#<?php  echo $graphColors[$i-1]?>"></div>&nbsp;<?php  echo ($totalVotes>0)?round($opt->getResults() / $totalVotes * 100):0 ?>%</td>
                                <td><?php  echo $opt->getOptionName() ?></td>
                            </tr>
                            <?php   $i++; ?>
                    <?php   } ?>
                </table>
                <?php  echo t2('%d Vote', '%d Votes', intval($totalVotes), intval($totalVotes))?>
            </div>

            <?php  if(count($optionNamesAbbrev) && !$_GET['dontGraphPoll'] && $totalVotes>0){ ?>
                <div class="offset1 span2"><img border="" src="//chart.apis.google.com/chart?cht=ls&chd=t:<?php  echo join(',',$optionResults)?>&chs=180x180&chf=bg,s,FFFFFF00&chof=png&chco=<?php  echo join(',',$graphColors)?>" alt="<?php   echo t('survey results');?>" /></div>
            <?php   } ?>


            <?php   if($_GET['dontGraphPoll']){ ?>
                <div class="small right" style="margin-top:8px"><a class="arrow" href="<?php  echo DIR_REL?>/?cID=<?php  echo $b->getBlockCollectionID() ?>"><?php  echo t('View Full Results')?></a></div>
            <?php   } ?>

            <div class="clearfix"></div>
    <?php   } else { ?>
        <form class="form-horizontal" method="post" action="<?php  echo $this->action('form_save_vote', '#survey-form-'.$controller->bID)?>">
            <legend><?php  echo $controller->getQuestion()?></legend>
            <?php   $c = Page::getCurrentPage(); ?>
                <input type="hidden" name="rcID" value="<?php  echo $c->getCollectionID()?>" />


            <div class="control-group">
                <?php  $options = $controller->getPollOptions();
                foreach($options as $opt) { ?>
                    <label class="radio">
                        <input type="radio" name="optionID" value="<?php  echo $opt->getOptionID()?>" />
                        <?php  echo $opt->getOptionName() ?>
                    </label>
                <?php   } ?>
            </div>

            <div class="control-group">
                <?php   if(!$controller->requiresRegistration() || intval($uID) > 0) { ?>
                    <input class="btn" type="submit" name="submit" value="<?php  echo t('Vote')?>" />
                <?php   }else{ ?>
                    <div class="alert alert-info"><?php  echo t('Please Login to Vote')?></div>
                <?php   } ?>
            </div>
        </form>
    <?php   } ?>

</div>
