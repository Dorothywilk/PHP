<?php

include '../class/vehicule.php';

  // Instanciation de l'objet : appel implicite à la méthode __construct()
$monVehicule = new Vehicule();

  // Mise à jour de la marque du véhicule
$monVehicule->marque = 'Peugeot';

  // Affichage de la marque du véhicule
echo $monVehicule->marque;