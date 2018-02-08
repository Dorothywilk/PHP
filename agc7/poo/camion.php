<?php namespace Gc7;

include './class/vehicule.php';
include './class/camion.php';


$monCamion = new Camion( 'Citröen' );

echo 'Mon camion de marque <b>' . $monCamion->getMarque()
     . '</b>, enregistré à l\'instant, le <b>'
     . $monCamion->getDateEnregistrement() . '</b>';

