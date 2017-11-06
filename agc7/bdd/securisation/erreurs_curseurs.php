<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Gestion des erreurs</h3>

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
  $pdo = pdo();
  $sql = "DROP PROCEDURE ajouter_adoption_exit;
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

  aff( $pdo );

  //  $pdo = $req( $sql );
  $sql = "CALL ajouter_adoption_exit(12, 3, @date_adoption, 1);
-- Violation unicité (animal 3 est déjà adopté)";
  $req( $sql );
  ?>
  <h4 class="text-danger">Attention: Plusieurs sorties... (Une seule affichée ici)</h4>
</div>

<div class="jumbotron" style="padding-top: 10px;">

  <h3 class="meaDo pb10">Curseurs</h3>

  <p class="lead">Permettent de parcourir les lignes de résultat d'une requête <code>SELECT</code>.
  </p>
</div>

<div class="maingc7">


  <?php

  $pdo=pdo();
  $sql = "declare v_var INT default 0;
  select count(*) into v_var from animal;";


  $sql = "select v_var;";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


