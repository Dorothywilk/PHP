<?php

include '../class/EtreHumain.php';


$oAlice = new Femme('Alice');
aff($oAlice);

echo '<br/><br/>';

$oBob = new Homme('Bobby');
aff($oBob);

function aff($personne) {
	$personne->faireDuSport();
	echo '<br/>';
	$personne->seDivertir();
	echo '<br/>';
	echo 'Sexe : ', $personne->getSexe();

}