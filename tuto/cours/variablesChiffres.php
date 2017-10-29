<?php

$prix=30;
$solde = 75/100;
$prixAPayer = $prix - $prix * $solde;
//echo $prixAPayer.'<hr>';


// Liège - Paris : 400 kms
$distantceParisLiege = 400;

$vitesseTrain1 = 180; // Km/h - Départ Liège à 15:00 
$vitesseTrain2 = 110; // Km/h - Départ Paris à 15:30



$secondesTrain1 = $distantceParisLiege / $vitesseTrain1;
echo 'Tps Train1 = ' . gmdate('H:i:s', $secondesTrain1*3600).'<br>';

$secondesTrain2 = $distantceParisLiege / $vitesseTrain2;
echo 'Tps Train2 = ' . gmdate('H:i:s', $secondesTrain2*3600).'<hr>';

// 2,2222222222222222222222222
// 2 H 13 MN 20 SEC
  

echo SQRT(400/180/110) . ' <hr>';

echo 'jtm moi aussi';



/*

       kms                 s
---------------------------------------
|                  |                  |
|                  |                  |
|      180         |      3600        |
|                  |                  |
|                  |                  |
---------------------------------------
|                  |                  |
|                  |                  |
|        X         |       TpsX       |
|                  |                  |
|                  |                  |
---------------------------------------

Train1 : distanceX = 180 x TpsX
Train2 : distanceY = 110 x TpsY
Or distanceY = 400 - distanceX
=>

Train1 : dX = 180 x T

Train2 : 400 - distanceX = 110 x Tps

400 = 110 x T + dX

dX = 400 / (110 x T)

180T = 400 / (110T)

T * 110 T = 400 / 180

T2 = 400/180 /110

T = SQR(400/180/110);



*/




//echo $a;

/*
// $n=17; // 17 // $diviseur = 3; //3
//echo '<hr><h2>'.$n.' / '.$diviseur.' = '.(int) ($n / $diviseur).' x '.$diviseur.' + '.($n%$diviseur).'</h2>';
*/
