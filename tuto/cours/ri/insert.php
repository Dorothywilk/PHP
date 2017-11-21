<?php

/*
UPDATE NEW_FAMILLE
SET NFM_BD = NFM_BD + 2
WHERE NFM_BD >= 35;

UPDATE NEW_FAMILLE
SET NFM_BG = NFM_BG + 2
WHERE NFM_BG >= 35;

INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB)
VALUES (35, 36, 'Roller');
*/


/**
* Opérationnelle
*/
function insert($nom, $idParrain, $f) {
  
  $ref= $f[$idParrain]['bd']; // Référence
  
  // if ($nom=='Jeny') echo $ref;
  
  
  // 1) Ajouter 2 aux BD qui sont à droite ( = >= à celle de bd qui reçoit)
  
  $i=0;
  foreach ($f as $membre)  
  {
    //echo $membre['nom'].'<br>';
    
    if ( $membre['bd'] >= $ref ) {
      $f[$i]['bd']+=2;
    }
    $i++;
  }



// 2) Ajouter 2 aux BG qui sont à droite ( = > à celle de bd qui reçoit)
  
  $i=0;
  foreach ($f as $membre)  
  {
        if ($nom=='Jeny'){
//      echo '<h3>'.$i.' bg: '.$membre['bg'].' - bd: '. $membre['bd'].' - Nom:    '.$membre['nom'].'</h3>';
        };
    //  echo '+2 / bg - $i='.$i;
    if ( $membre['bg'] >= $ref ) {
      $f[$i]['bg']+=2;
    }
    $i++;
  }


// 3)Insertion du membre avec bg =bd er (élément de référence, là, qui reçoit), 
// bd=bg +1
array_push($f, [ 'prof' => 1111, 'bg' => $f[$idParrain]['bd']-2, 'bd' => $f[$idParrain]['bd']-1, 'nom' => $nom ]);
  
  //$f[2]['ok'];
 
   return $f;
};
