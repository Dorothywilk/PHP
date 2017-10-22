<?php
include ('classes/Humain.php');
include ('classes/User.php');


include('cours/variables.php');
// include('cours/objets.php');

























//TODODO Faire ICI selon même principe init... concatenation.php

// include('initiation/tableau.php');
// include('initiation/tableauIndexe.php');




















function affUser($user) {
  echo $user->prenom . ' (' . $user->genre . ') : '. $user->estAutorise().'.<br>';
}



/*
function nf($v) {
  return number_format( $v , 2 ,',', ' ');
}
*/

/*
/*$jade = new user('Jade', 'Fille', 12, 'Etudiante');
$hugo = new user('Hugo', 'Homme', 21, 'maçon');
$flipper = new user('Flipper', 'Dauphin', 7, 'chasseur');
$jeny = new user('Jeny', 'Chienne', 7, 'chasseur');
*/



