<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Procédures</h3>

  <p class="lead">...</p>
  <ul class="lead mt10">
    <li>Nécessite de redéfinir le délimiter (| ou //)
    </li>
    <li>...
    </li>
  </ul>

  <p class="lead"><code>CREATE PROCEDURE <i>nom_procedure</i> ([IN</code> | <code>OUT</code> |
    <code>INOUT <i>param</i> <i>TYPE</i>][, ...])</code>...</p>
</div>


<div class="maingc7">


  <?php

  $pdo = pdo();

  $sql = "DELIMITER | -- On change le délimiteur
CREATE PROCEDURE afficher_races()
    -- Pas de paramètres, toujours des parenthèses
BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
END|
-- Et on termine bien sûr la commande CREATE PROCEDURE
-- par notre nouveau délimiteur
DELIMITER ;
-- On remet le délimiteur par défaut";
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "CALL afficher_races();";
  $req( $sql, $pdo );


  $pdo = pdo();

  $sql = "DELIMITER | -- On change le délimiteur
CREATE PROCEDURE afficher_races()
    -- Pas de paramètres, toujours des parenthèses
BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
END|
-- Et on termine bien sûr la commande CREATE PROCEDURE
-- par notre nouveau délimiteur
DELIMITER ;
-- On remet le délimiteur par défaut";
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "CALL afficher_races();";
  $req( $sql, $pdo );

  ?>

  <h3>Procédure avec deux paramètres dont un <code>INOUT</code></h3>

  <?php

  $pdo = pdo();

  $sql = "DELIMITER |

CREATE PROCEDURE calculer_prix (IN p_animal_id INT,
                                INOUT p_prix DECIMAL(7,2))
BEGIN
    SELECT p_prix + COALESCE(Race.prix, Espece.prix) INTO p_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;
END |

DELIMITER ;";

  affLign( $sql );
  //$pdo->query($sql);

  $sql = "SET @prix = 0;
-- On initialise @prix à 0";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL calculer_prix (13, @prix);
-- Achat de Rouquine";
  affLign( $sql );
  $pdo->query( $sql );
  $sql = "SELECT @prix AS prix_intermediaire_1;";
  affLign( $sql );
  $pdo = $req( $sql, $pdo );
//  $pdo = $req( $sql );

  $sql = "CALL calculer_prix (24, @prix);  -- Achat de Cartouche";
  affLign( $sql );
  $pdo->query( $sql );
  $sql = "SELECT @prix AS prix_intermediaire_2;";
  affLign( $sql );
  $pdo = $req( $sql, $pdo );


  $sql = "CALL calculer_prix (42, @prix);
-- Achat de Bilba";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT @prix AS prix_intermediaire_3;";
  $pdo = $req( $sql, $pdo );


  //  $pdo->query($sql);


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>

