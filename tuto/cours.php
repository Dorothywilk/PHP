<?php
include ('classes/Humain.php');
include ('classes/User.php');

// include('initiation/tableau.php');
// include('initiation/tableauIndexe.php');
// 
// include('cours/variables.php');
include('cours/variables.php');















































function affUser($user) {
  echo $user->prenom . ' (' . $user->genre . ') : '. $user->estAutorise().'.<br>';
}



	$user[1]['prenom']='Hugo';
	$user[1]['age']=21;


	$user[2]['prenom']='Hadrien';
	$user[2]['age']=18;



//for ($i=1; $i<=2; $i++)
//echo'<h1 style ="color:blue">' . $user[$i]['prenom'] . '<hr><hr></h1>';


  $prenom1 = 'Hugo';
  $age1 = 21;
 
  // echo $prenom1;        // Affiche 'Hugo'
  // echo ' a ';
  // echo $age1;        // Affiche 19
  // echo ' ans' . '<hr>';


  // Avantage de la concaténation: 1 seule fois echo appelé.
  $prenom2 = 'Hadrien';
  $age2 = 18;
 
  //echo '<hr>'.$prenom2 . ' a ' . $age2  . ' ans';

//echo '<hr><hr>';

//

















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



