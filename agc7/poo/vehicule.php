<?php namespace Gc7;

include './class/vehicule.php';
include './class/voiture.php';


$maVoiture = new Voiture('Peugeot');
$maVoiture->demarrer();
echo ' (Ma '.$maVoiture->getMarque().')';

echo '<hr>';


// Instanciation de l'objet : appel implicite à la méthode _construct()
$monVehicule = new Voiture( 'Renault' );
$monVehicule->demarrer();
$monVehicule->reparer();

// Je remplis mon réservoir de 50 L d'essence
$monVehicule->setVolumeCarburant( 100 );

echo sprintf( "Il me reste %u L d'essence<br>", $monVehicule->getVolumeCarburant() ) . '<hr>';

echo'Ma voiture est de marque <b>'.strtoupper($monVehicule->getMarque()).'</b>';
