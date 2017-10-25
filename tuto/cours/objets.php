<h3>Mon cours sur les objets</h3>

<?php

$do = new user('Do', 'Femme', 56, 'Sans');
//$hugo->vieillir();
$jade = new user('Jade', 'Fille', 12, 'Etudiante');
$mimi = new user ('Mimi', 'Homme', 30, 'Cuisinier');
$coco = new user ('Coco', 'Perroquet', 45, 'Sans');

//$hugo = new user('Hugo', 'Homme', 21, 'maçon');
//$flipper = new user('Flipper', 'Dauphin', 7, 'chasseur');
//$jeny = new user('Jeny', 'Chienne', 7, 'chasseur');


 include('C:\laragon\www\do\tuto\includes/fonctions.php'); affUser($do);
 affUser($mimi);
// affUser($coco);

$mimi->prof='pompier';

    echo '<pre>';
        print_r($mimi);
    echo '</pre>';


echo 'Mimi est-il humain ? ' . ( ($mimi->estHumain) ? 'Oui':'Non' );

