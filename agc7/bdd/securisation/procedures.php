<?php
namespace GC7;
?>

<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/procedures-stockees"
      target="_blank">Procédures stockées</a></h1>

  <p class="lead">Ensemble d'instructions MySQl nommé.</p>
  <ul class="lead mt10">
    <li>Nécessite de redéfinir le délimiter (| ou //)
    </li>
    <li><code>DROP</code> pour supprimer une procédure stockée
    </li>
  </ul>

  <p class="lead"><code>CREATE PROCEDURE <i>nom_procedure</i> ([IN</code> | <code>OUT</code> |
    <code>INOUT <i>param</i> <i>TYPE</i>][, ...])</code>...</p>
</div>


<div class="maingc7">

  <h3>Exemple basique</h3>
  <?php

  $pdo = pdo( 'ocr2' );

  $sql = "DROP PROCEDURE IF EXISTS uuu;

-- DELIMITER |

CREATE PROCEDURE uuu(OUT p_var VARCHAR(255))

BEGIN
  declare v_var INT default 0;

  set v_var = 7;

  -- select 1 as Valeur, v_var;
  -- Ne peut être affichée que via MySQL CLi

  select concat(
         'Var loc = ', v_var,
         ' - Résultat du IF(v_var = 7) = ',
         IF(v_var=7, 777, 333)) into p_var;
-- END|
-- DELIMITER ;

END;

call uuu(@une_var);";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select @une_var";
  $req( $sql, $pdo );

  $sql = "-- Poser un DELIMITER uniquement avec MySQL Cli,
-- pas en PHP
-- DELIMITER | -- On change le délimiteur

DROP PROCEDURE IF EXISTS afficher_races;

CREATE PROCEDURE afficher_races()
    -- Pas de paramètres, toujours des parenthèses
BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
-- Et on termine bien sûr la commande CREATE PROCEDURE
-- par notre nouveau délimiteur
-- END| -- Si avec MySQL CLi
END;
-- DELIMITER ;
-- On remettrait avec MySQL CLi, le délimiteur par défaut";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL afficher_races();";
  $req( $sql, $pdo );


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

  $sql = "DROP PROCEDURE IF EXISTS calculer_prix;

-- DELIMITER |

CREATE PROCEDURE calculer_prix (IN p_animal_id INT,
                                INOUT p_prix DECIMAL(7,2))
BEGIN
    SELECT p_prix + COALESCE(Race.prix, Espece.prix) INTO p_prix
    FROM Animal
      INNER JOIN Espece ON Espece.id = Animal.espece_id
      LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;
-- END |
END;
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

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


  $sql = "DROP PROCEDURE IF EXISTS aujourdhui_demain;

-- DELIMITER |
CREATE PROCEDURE aujourdhui_demain ()
BEGIN
    DECLARE v_date DATE DEFAULT CURRENT_DATE();
    -- On déclare une variable locale et on lui met
    -- une valeur par défaut

    SET lc_time_names = 'fr_FR';
    SET @today = v_date;

    SET v_date = v_date + INTERVAL 1 DAY;
    -- On change la valeur de la variable locale

    SELECT DATE_FORMAT(@today, '%W %e %M %Y') AS Aujourdhui,
           DATE_FORMAT(v_date, '%W %e %M %Y') AS Demain;
END;
-- END|
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL aujourdhui_demain();";
  $pdo = $req( $sql, $pdo );
  ?>

  Voir <a
    href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/structurer-ses-instructions"
    target="_blank">Portée des variables</a>

  <?php

  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>

