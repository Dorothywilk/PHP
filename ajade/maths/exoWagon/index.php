<!--
<p class="policeDo2">
Page à Puce<br> (
<span class="policeGc7 blancDo sz05">J</span>_
<span class="policeGc7 blancDo sz05">a</span>_
<span class="policeGc7 blancDo sz05">d</span>_
<span class="policeGc7 blancDo sz05">e </span> )
</p>
-->
<?php
$dir = $_SERVER[ 'HTTP_REFERER' ] . 'maths/exoWagon/';
?>

<p>Image 1 </p>
<IMG src="<?= $dir ?>wagon.jpg" width="100%">

<p> Image 2 ( Corrigée ) </p>
<IMG src="<?= $dir ?>wagon2.jpg" width="100%">


<?php
// ToDoDo Faire wagon3.jpg avec n dans les formules, et non m !!!
// 1) Dans la case 2) Dans la réponse Quelle...
//ToDoDo Dire @Puce que prochaine fois ou problème de lecture à cause de mauvaise écrityure, punition tombe directement ! ;-), car c'est toi, là, qui 'retravaille' plus qu'elle...
?>

<?php echo str_repeat( '<br>', 20 ); ?>
