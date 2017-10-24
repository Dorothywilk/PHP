<h3>Mon cours sur les objets</h3>

<?php



$do = new user('Do', 'Femme', 56, 'Sans');
//$hugo->vieillir();

$mimi = new user ('Mimi', 'Homme', 30, 'Cuisinier');
$coco = new user ('Coco', 'Perroquet', 45, 'Sans');


// affUser($do);
// affUser($mimi);
// affUser($coco);

$mimi->prof='pompier';

    echo '<pre>';
        print_r($mimi);
    echo '</pre>';


echo 'Mimi, humain ? '.$mimi->estHumain;
