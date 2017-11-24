<?php
namespace GC7;
?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/structurer-ses-instructions"
      target="_blank">Conditions</a></h1>

</div>
<div class="maingc7">

  <h3>Rappel</h3>
  <?php

  $sql = "CALL aujourdhui_demain();";
  $pdo = $req( $sql );

  ?>

  <h3>Simple <code>IF(cond, 1, 0)</code> ou <code>IF ... THEN ...</code></h3>

  <?php
  $sql = "SELECT IF(1=1,'Oui','Non') as '1 = 1 ?'";
  $pdo = $req( $sql );
  ?>

  <h3>IF() dans une procédure (est_adopté)</h3>

  <?php
  $pdo = pdo( 'ocr2' );

  $sql = "DROP PROCEDURE IF EXISTS est_adopte;

CREATE PROCEDURE est_adopte(IN p_animal_id INT)
BEGIN
    DECLARE v_nb INT DEFAULT 0;
    -- On crée une variable locale

    SELECT COUNT(*) INTO v_nb
    FROM Adoption
    WHERE animal_id = p_animal_id;
    -- On met le nombre de lignes correspondant à l'animal
    -- dans Adoption dans notre variable locale

    IF v_nb > 0 THEN
    -- On teste si v_nb est supérieur à 0
    -- (donc si l'animal a été adopté)
        SELECT \"J'ai déjà été adopté !\" 'Adopté ?';
    END IF;
    -- Et on n'oublie surtout pas le END IF et le ; final
END;";

  AffLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL est_adopte(3);";
  $req( $sql, $pdo );

  ?>

  <h3>IF ELSE</h3>

  <?php

  $sql = "DROP PROCEDURE IF EXISTS message_sexe;

  -- DELIMITER |
  CREATE PROCEDURE message_sexe(IN p_animal_id INT)
  BEGIN
    DECLARE v_sexe VARCHAR(10);

    SELECT sexe INTO v_sexe
    FROM Animal
    WHERE id = p_animal_id;

    IF (v_sexe = 'F') THEN      -- Première possibilité
      SELECT 'Je suis une femelle !' AS sexe;
    ELSEIF (v_sexe = 'M') THEN  -- Deuxième possibilité
      SELECT 'Je suis un mâle !' AS sexe;
    ELSE                        -- Défaut
      SELECT 'Je suis en plein questionnement existentiel...'
             AS sexe;
    END IF;
  -- END|
  END ;
  -- DELIMITER ;";

  affLign( $sql );
  $pdo->query( $sql );

  // Indique quelle datbase est utilisée
  $sql = 'select database();';
  $req( $sql, $pdo );

  //  $pdo = pdo( 'ocr2' );

  //  $sql = 'select database();';
  //  $req( $sql, $pdo );

  $sql = "CALL message_sexe(8);   -- Mâle";
  $req( $sql, $pdo );

  $sql = "CALL message_sexe(6);   -- Femelle";
  $req( $sql, $pdo );


  $sql = "CALL message_sexe(9);   -- Ni l'un ni l'autre";
  $req( $sql, $pdo );

  ?>

  <h3>CASE</h3>

  <?php

  $sql = 'select database();';
  $req( $sql, $pdo );

  $pdo = pdo( 'ocr' );

  $sql = 'select database();';
  $req( $sql, $pdo );

  $sql = "DROP PROCEDURE IF EXISTS message_sexe2;

  -- DELIMITER |
  CREATE PROCEDURE message_sexe2(IN p_animal_id INT)
  BEGIN
   DECLARE v_sexe VARCHAR(10);

   SELECT sexe INTO v_sexe
   FROM Animal
   WHERE id = p_animal_id;

   CASE v_sexe
      WHEN 'F' THEN   -- Première possibilité
         SELECT 'Je suis une femelle !' AS sexe2;
      WHEN 'M' THEN   -- Deuxième possibilité
         SELECT 'Je suis un mâle !' AS sexe2;
      ELSE            -- Défaut
         SELECT 'Je suis en plein questionnement existentiel...'
         AS sexe2;
   END CASE;
  -- END |
  END ;
  -- DELIMITER;";

  affLign( $sql );
  $pdo->query( $sql );


  $sql = "CALL message_sexe2(8);   -- Mâle";
  //  $req( $sql, $pdo );
  //echo 'ok';
  //  exit;

  $sql = "CALL message_sexe2(6);   -- Femelle";
  $req( $sql, $pdo );


  $sql = "CALL message_sexe2(9);   -- Ni l'un ni l'autre";
  $req( $sql, $pdo );


  ?>

  <h3>CASE dans une requête simple</h3>

  <?php

  $sql = "SELECT id, nom, CASE
          WHEN sexe = 'M' THEN 'Je suis un mâle !'
          WHEN sexe = 'F' THEN 'Je suis une femelle !'
          ELSE 'Je suis en plein questionnement existentiel...'
       END AS message
FROM Animal
WHERE id IN (9, 8, 6);";
  $req( $sql );

  ?>


  <h3>IF dans une requête simple</h3>

  <?php

  $sql = "SELECT nom,
       IF(sexe = 'M', 'Je suis un mâle',
                       'Je ne suis pas un mâle') AS sexe
FROM Animal
WHERE espece_id = 4;";
  $req( $sql );

  ?>

  <h3>Boucles</h3>
  <ul>
    <li><code>WHILE</code> : Permet de répéter une série d'instructions tant que la condition donnée
      reste vraie.
    </li>
    <li><code>REPEAT</code> : Exécute des instructions de la boucle jusqu'à ce que la condition
      donnée devienne vraie.
    </li>
    <li><code>LOOP</code> : Doit intégrer dans ses instructions un élément qui va la faire s'arrêter
      (Usage des commandes ci-dessous)
    </li>
  </ul>

  <h4><code>LEAVE</code> et <code>ITERATE</code> <=> BREAK; et REPEAT; en PHP</h4>

  <?php

  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


