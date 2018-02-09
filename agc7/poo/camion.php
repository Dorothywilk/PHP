<?php namespace Poo;

include './class/Vehicule.php';
include './class/Camion.php';


$monCamion = new Camion( 'Citröen' );

echo 'Mon camion de marque <b>' . $monCamion->getMarque()
     . '</b>, enregistré à l\'instant, le <b>'
     . $monCamion->getDateEnregistrement() . '</b><br><br>';

echo 'NRJ: ' . Camion::NRJ;

