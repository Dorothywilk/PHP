<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/gestionnaires-d-erreurs-curseurs-et-utilisation-avancee"
      target="_blank">Gestion des erreurs</a></h1>

  <p class="lead">Permettent de gérer les cas où une erreur se produirait pendant l'exécution d'une
    série d'instructions;</p>

  <p class="lead"><code>DECLARE { EXIT | CONTINUE } HANDLER FOR { numero_erreur | { SQLSTATE
      identifiant_erreur } | condition } instruction ou bloc d'instructions</code></p>
  <ul>
    <li><p>Un gestionnaire d'erreur définit une instruction (une seule !), ou un bloc d'instructions
        (<code data-claire-semantic="sql">BEGIN ... END;</code>), qui va être<strong> exécuté en cas
          d'erreur</strong> correspondant au gestionnaire.</p></li>

    <li><p>Tous les gestionnaires d'erreur doivent être déclarés au même endroit : <strong>Après la
          déclaration des variables locales, mais avant les instructions de la procédure</strong>.
    </li>

    <li><p>Un gestionnaire peut, soit provoquer l'<strong>arrêt de la procédure</strong>
        (<code>EXIT</code>), soit <strong>faire reprendre la procédure</strong> après avoir géré
        l'erreur (<code>CONTINUE</code>).</p></li>

    <li><p>On peut identifier le type d'erreur que le gestionnaire va reconnaître de trois manières
        différentes : <strong>un numéro d'erreur, un identifiant, ou une
          <code>CONDITION</code></strong>.</p></li>

    <li><p>Un gestionnaire étant défini grâce au mot-clé <code>DECLARE</code>, comme les variables
        locales, il a exactement <strong>la même portée</strong> que celles-ci.</p></li>
  </ul>
  <code class="lead">DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SELECT 'Erreur...';</code>
</div>


<a
  href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/gestionnaires-d-erreurs-curseurs-et-utilisation-avancee"
  target="_blank" class="lead">Exemple en ligne</a> (Y voir codes des erreurs)<br><br>

<p class="lead">Il est possible de nommer les erreurs :<br>
  <code>DECLARE nom_erreur CONDITION FOR { SQLSTATE identifiant_SQL | numero_erreur_MySQL };</code>
</p>

<div class="maingc7">
  <h3 class="lead">Exemple avec plusieurs gestionnaires : </h3>
  <?php
  $pdo = pdo('ocr2');

  $sql = "DROP PROCEDURE IF EXISTS ajouter_adoption_exit;
-- DELIMITER |
CREATE PROCEDURE ajouter_adoption_exit(IN p_client_id INT,
    IN p_animal_id INT, IN p_date DATE, IN p_paye TINYINT)
BEGIN
    DECLARE v_prix DECIMAL(7,2);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            SELECT 'Une erreur est survenue...';
            SELECT 'Arrêt prématuré de la procédure';
        END;

    SELECT 'Début procédure';

    SELECT COALESCE(Race.prix, Espece.prix) INTO v_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;

    INSERT INTO Adoption (animal_id, client_id, date_reservation,
           date_adoption, prix, paye)
    VALUES (p_animal_id, p_client_id, CURRENT_DATE(),
           p_date, v_prix, p_paye);

    SELECT 'Fin procédure';
-- END|
END;
-- DELIMITER ;";
  $pdo->query( $sql );


  //  $pdo = $req( $sql );
  $sql = "CALL ajouter_adoption_exit(12, 3, @date_adoption, 1);
-- Violation unicité (animal 3 est déjà adopté)";
  $req( $sql, $pdo );
  ?>
  <h4 class="text-danger">Attention: Plusieurs sorties... (Une seule affichée ici)</h4>
</div>

<div class="jumbotron" style="padding-top: 10px;">
  <h3 class="meaDo pb10">Curseurs</h3>

  <p class="lead">Permettent de parcourir les lignes de résultat d'une requête <code>SELECT</code>.
  </p>

  <p class="lead">Ordre des déclarations</p>
  <ul>
    <li>Variables locales</li>
    <li>Conditions</li>
    <li>Curseur</li>
    <li>Gestionnaires d'arreur</li>
  </ul>
</div>

<div class="maingc7">

  <h3>Exemple d'utilisation de curseur avec sortie si pas de résultat</h3>
  <?php

  $pdo = pdo();
  $sql = "DROP PROCEDURE test_condition2;
DELIMITER |
CREATE PROCEDURE test_condition2(IN p_ville VARCHAR(100))
BEGIN
    DECLARE v_nom, v_prenom VARCHAR(100);

    -- On déclare fin comme un BOOLEAN, avec FALSE pour défaut
    DECLARE fin BOOLEAN DEFAULT FALSE;

    DECLARE curs_clients CURSOR
        FOR SELECT nom, prenom
        FROM Client
        WHERE ville = p_ville;

    -- On utilise TRUE au lieu de 1
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

    OPEN curs_clients;

    loop_curseur: LOOP
        FETCH curs_clients INTO v_nom, v_prenom;

        IF fin THEN     -- Plus besoin de ''= 1''
            LEAVE loop_curseur;
        END IF;

        SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
    END LOOP;

    CLOSE curs_clients;
END|
DELIMITER ;

CALL test_condition2('Houtsiplou');
CALL test_condition2('Bruxelles');";
  //  $pdo->query( $sql );
  affLign( $sql );
  //  $sql = "select v_var;";
  //  $req( $sql, $pdo );
  ?>

  <h3>Requêtes dynamiques</h3>

  <?php

  $pdo = pdo();

  $sql = "DROP PROCEDURE IF EXISTS select_race_dynamique;
-- DELIMITER |
CREATE PROCEDURE select_race_dynamique(p_clause VARCHAR(255))
BEGIN
    SET @sql =
        CONCAT('SELECT nom, description FROM Race ', p_clause);

    PREPARE requete FROM @sql;
    EXECUTE requete;
-- END |
-- DELIMITER ;
END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "-- Affichera les races de chats
CALL select_race_dynamique('WHERE espece_id = 2');";
  $req( $sql );

  $sql = "CALL select_race_dynamique('ORDER BY nom LIMIT 2');";
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


