<?php 
// echo '(Dans le formulaire, il y a eût d\'entré : '.$_POST['prenom'].')<hr>';
if (isset($_POST['prenom']) && $_POST['prenom'] <> '') {
	
 $prenom = $_POST['prenom'];

// Simulation de ce que renvoie le formulaire
//$prenom = 'jAdoulette';

	if(strtolower($prenom) == strtolower('Jade')){
		echo 'Salut ma puce';
	}
	else {
		echo 'Bonjour ' . $prenom;
	}
	
}
else
 echo 'Vous avez oublié de rentrer votre prénom';

// If ($choix == 'variablesChaines')
// include ('cours/variablesChaines.php');