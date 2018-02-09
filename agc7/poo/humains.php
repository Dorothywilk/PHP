<?php namespace Poo;

include './class/EtreHumain.php';
include './class/HommeFemme.php';

echo '<h1>Classes abstraites et finales</h1>';

$oAlice = new Femme( 'Alice' );
aff( $oAlice );

echo '<br/><hr><br/>';

$oBob = new Homme( 'Bobby' );
aff( $oBob );

var_dump( $oAlice );

/**
 * Affiche ce que fait une personne
 *
 * @param [type] $personne
 *
 * @return void
 */
function aff( $personne )
{

	
	$personne->faireDuSport();
	echo '<br/>';
	$personne->seDivertir();
	echo '<br/>';
	echo 'Sexe : ', $personne->getSexe();
}
