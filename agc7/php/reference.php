<?php namespace Php;

//include 'autoload.php';
include 'class/esAB.php';
?>

<h3><b>Avec de simples variables</b></h3>
<?php
$a = 1;
$b = &$a;
$b = 2;
echo 'a=', $a, ' | b=', $b;
?>

<hr>
<h3><b>Avec des propriétés d'objets</b></h3>
<?php
$oA = new A;
$oB = new B;
var_dump( $oA, $oB );
$oB->nnn = &$oA->nnn;
$oB->nnn = 777;
var_dump( $oA, $oB );
?>
Les propriétés n de A et de B sont liées


<hr>
<h3><b>Avec des objets</b></h3>
<?php
$oA1    = new A;
$oA2    = $oA1;
$oA2->nnn = 2;
var_dump( $oA1, $oA2 );
?>
Naturellement par référence pour les objets<br>
Rappel: Utiliser <code>clone()</code> pour avoir des objets distincts
