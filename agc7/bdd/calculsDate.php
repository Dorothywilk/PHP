<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h3 class="meaDo">Calculs de dates</h3>

    <ul class="lead mt10">
      <li>DATEDIFF() : qui donne un résultat en nombre de jours;</li>
      <li>TIMEDIFF() : qui donne un résultat sous forme de TIME;</li>
      <li>TIMESTAMPDIFF() : qui donne le résultat dans l'unité de temps souhaitée (heure, secondes,
        mois,…).
      </li>
    </ul>

  </div>
  <?php

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
  $cnx->query( 'SET lc_time_names = "fr_FR"' );
  $cnx = $cnx->query( $sql );
  try {
    $rep = $cnx->fetchAll( \PDO::FETCH_OBJ );
  } catch ( Exception $e ) {
    aff( $e );
  }

//  aff($rep);
  if ( $rep ) {
    affR( $rep );
  }
  if ( preg_match( '/INSERT|UPDATE|REPLACE|DELETE/i', $sql ) ) {
    $nbra = $cnx->rowCount(); // Nombre de rangs affectés
    $plur = ( $nbra > 1 ) ? 's' : ''; // Pluriel
    echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur . '<hr>';
  }

};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


echo '<h3>Bases - Diff entre 2 dates</h3>';

$sql = 'SELECT DATEDIFF("2011-12-25 22:12:18","2011-11-10") AS "nbre de jours entre le 2011-12-25 22:12:18 et le 2011-11-10"';
aff( $sql );
$req( $sql );

$sql = 'SELECT
-- Avec des DATETIME
   "2011-10-08 12:35:45" AS datetime1, "2011-10-07 16:00:25" AS datetime2,
   TIMEDIFF("2011-10-08 12:35:45", "2011-10-07 16:00:25") as diffDATETIME,
-- Avec des TIME
   "12:35:45" AS time1, "00:00:25" AS time2, TIMEDIFF("12:35:45", "00:00:25") as diffTIME;';
aff( $sql );
$req( $sql );


$sql = 'SELECT TIMESTAMPDIFF(DAY, "2011-11-10", "2011-12-25") AS nb_jours,
       TIMESTAMPDIFF(HOUR,"2011-11-10", "2011-12-25 22:00:00") AS nb_heures_def, 
       TIMESTAMPDIFF(HOUR,"2011-11-10 14:00:00", "2011-12-25 22:00:00") AS nb_heures,
       TIMESTAMPDIFF(QUARTER,"2011-11-10 14:00:00", "2012-08-25 22:00:00") AS nb_trimestres;';
aff( $sql );
$req( $sql );

echo '<h3>Intervalles - ADD</h3>';
?>
  <ul>
    <li>ADDDATE(date, INTERVAL quantite unite) : qui s'utilise avec un INTERVAL ou un nombre de
      jours.
    </li>
    <li>DATE_ADD(date, INTERVAL quantite unite) : qui s'utilise avec un INTERVAL.</li>
    <li>TIMESTAMPADD(unite, quantite, date) : qui n'utilise pas d'INTERVAL mais un nombre plus
      limité d'unités de
      temps.
    </li>

  </ul>

  <?php
$sql = 'SELECT ADDDATE("2011-05-21", INTERVAL 3 MONTH) AS date_interval,  
        -- Avec DATE et INTERVAL
       ADDDATE("2011-05-21 12:15:56", INTERVAL "3 02:10:32" DAY_SECOND) AS datetime_interval, 
        -- Avec DATETIME et INTERVAL
       ADDDATE("2011-05-21", 12) AS date_nombre_jours,                                        
        -- Avec DATE et nombre de jours
       ADDDATE("2011-05-21 12:15:56", 42) AS datetime_nombre_jours;                           
        -- Avec DATETIME et nombre de jours';
aff( $sql );
$req( $sql );


$sql = 'SELECT DATE_ADD("2011-05-21", INTERVAL 3 MONTH) AS avec_DATE,
        -- Avec DATE
       DATE_ADD("2011-05-21 12:15:56", INTERVAL "3 02:10:32" DAY_SECOND) AS avec_DATETIME,
        -- Avec DATETIME,
        "2011-05-21" + INTERVAL 5 DAY AS droite,                    
        -- Avec DATE et intervalle à droite
       INTERVAL "3 12" DAY_HOUR + "2011-05-21 12:15:56" AS gauche; 
        -- Avec DATETIME et intervalle à gauche';
aff( $sql );
$req( $sql );

$sql = 'SELECT NOW() AS Maintenant, ADDTIME(NOW(), "01:00:00") AS DansUneHeure,  
        -- Avec un DATETIME
       CURRENT_TIME() AS HeureCourante, ADDTIME(CURRENT_TIME(), "03:20:02") AS PlusTard; 
        -- Avec un TIME';
aff( $sql );
$req( $sql );


echo '<h3>Intervalles - SUB</h3>';

$sql = 'SELECT SUBDATE("2011-05-21 12:15:56", INTERVAL "3 02:10:32" DAY_SECOND) AS SUBDATE1, 
       SUBDATE("2011-05-21", 12) AS SUBDATE2,
       DATE_SUB("2011-05-21", INTERVAL 3 MONTH) AS DATE_SUB;';
aff( $sql );
$req( $sql );

$sql = 'SELECT SUBTIME("2011-05-21 12:15:56", "18:35:15") AS SUBTIME1,
       SUBTIME("12:15:56", "8:35:15") AS SUBTIME2,
       "2011-05-21" - INTERVAL 5 DAY;';
aff( $sql );
$req( $sql );



echo '<h3>FROM_UNIXTIME & UNIX_TIMESTAMP</h3>';

$sql = 'SELECT FROM_UNIXTIME(1325595287), UNIX_TIMESTAMP("2012-01-03 13:54:47");';
aff( $sql );
$req( $sql );


echo '<h3>MAKEDATE & MAKETIME</h3>';

$sql = 'SELECT MAKEDATE(2012, 60) AS 60eJour2012, MAKETIME(3, 45, 34) AS heureCree;';
aff( $sql );
$req( $sql );


echo '<h3>SEC_TO_TIME & TIME_TO_SEC</h3>';

$sql = 'SELECT SEC_TO_TIME(102569), TIME_TO_SEC("01:00:30")';
aff( $sql );
$req( $sql );



/*
?>
  <div class="jumbotron">
    <p class="h3-responsive">Les tables de référence</p>
    <?php
    $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id from animal limit 3';
    aff( 'Animal (Les 3 premiers ' . '/' . $nbr( 'animal' ) . ')' );
    $req( $sql );

    aff( 'Race (Les 3 premiers ' . '/' . $nbr( 'race' ) . ')' );
    $sql = 'select * from race limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers ' . '/' . $nbr( 'espece' ) . ')' );
    $sql = 'select * from espece limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = "select id, nom_courant, nom_latin, concat(left(description, 28), '...'), prix from espece limit 3";
    $req( $sql );
    ?>
</div >
*/

