<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h1 class="meaDo pb10"><a href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/obtenir-la-date-l-heure-actuelle" target="_blank">Date / Heure</a></h1>

    <p class="lead">Fonctions temporelles</p>

    <p class="lead pv0 ml10"><code>DATE</code>, <code>TIME</code>, <code>DATETIME</code>, <code>TIMESTAMP</code>,
      <code>YEAR</code>, etc...
    </p>

  </div>

  <div class="maingc7">

    <?php

  echo '<h3>Bases</h3>';

  $sql = "SELECT date(20171028), time(75521),YEAR(now()), month(now()),
       day(now()), time(now())";
  $req( $sql );


  $sql = "SELECT curdate(), current_date (), current_date";
  $req( $sql );


  $sql = "SELECT curtime(), now(), sysdate()";
  $req( $sql );


  $sql = "SELECT LOCALTIME, CURRENT_TIMESTAMP(), LOCALTIMESTAMP";
  $req( $sql );


  $sql = "SELECT *, unix_timestamp() FROM testDate";
  echo '<h4>';
  aff( $sql );
  echo '</h4>';
  //  $req( $sql );


  echo '<h3>Formater une date</h3>';

  $sql = 'SELECT nom, date_naissance,
       DATE(date_naissance) AS uniquementDate,
       TIME(date_naissance) AS uniquementTime
FROM Animal
WHERE espece_id = 4 limit 3';
  $req( $sql );


  $sql = '-- > <g>$sql=\'SET lc_time_names = "fr_FR"\'; // Date en français</g>

SELECT nom, DATE(date_naissance) AS date_naiss,
       DAY(date_naissance) AS jour,
       DAYOFMONTH(date_naissance) AS jour,
       DAYOFWEEK(date_naissance) AS jour_sem,
       WEEKDAY(date_naissance) AS jour_sem2,
       DAYNAME(date_naissance) AS nom_jour,
       DAYOFYEAR(date_naissance) AS jour_annee
FROM Animal
WHERE espece_id = 4 limit 3';
  $req( $sql );


  $sql = 'SELECT nom, date_naissance, WEEK(date_naissance) AS semaine,
       WEEKOFYEAR(date_naissance) AS semaine2,
       YEARWEEK(date_naissance) AS semaine_annee
FROM Animal
WHERE espece_id = 4';
  $req( $sql );


  $sql = 'SELECT nom, date_naissance, MONTH(date_naissance) AS numero_mois,
       MONTHNAME(date_naissance) AS nom_mois, year(date_naissance)
FROM Animal
WHERE espece_id = 4';
  $req( $sql );


  $sql = 'SELECT nom, date_naissance,
       TIME(date_naissance) AS time_complet,
       HOUR(date_naissance) AS heure,
       MINUTE(date_naissance) AS minutes,
       SECOND(date_naissance) AS secondes
FROM Animal
WHERE espece_id = 4 limit 3';
  $req( $sql );


  $sql = 'SELECT nom, date_naissance, CONCAT_WS(" ", "le",
       DAYNAME(date_naissance), DAY(date_naissance),
       MONTHNAME(date_naissance), YEAR(date_naissance)) AS jolie_date
FROM Animal
WHERE espece_id = 4 limit 3';
  $req( $sql );

  $pdo = pdo();

  ?>

      <h3>Date en français</h3>

      <?php

  $sql = 'SET lc_time_names = "fr_FR"';
  $pdo->query( $sql );


  $sql = 'SELECT nom, date_naissance,
       DATE_FORMAT(date_naissance, "Anzin, le %W %e %M %Y") AS date
FROM Animal
WHERE espece_id = 4 limit 3';
  $req( $sql, $pdo );


  $sql = 'SELECT DATE_FORMAT(NOW(),
       "Nous sommes aujourd\'hui le %d %M de l\'année %Y.<br>       Il est actuellement %k heures
       et %i minutes.") AS Top_date_longue,
       DATE_FORMAT(NOW(), "%d %b. %y - %T") AS Top_date_courte';
  $req( $sql );


  $sql = 'SELECT
STR_TO_DATE("23/04/2011 à 09h17", "%d/%m/%Y à %Hh%i") AS Str2Date,
STR_TO_DATE("20111027133056", GET_FORMAT(TIMESTAMP, "INTERNAL"))
           AS date_heure_int;';
  $req( $sql );


  ?>
        <div class="jumbotron jumbotronRef">
          <p class="h3-responsive text-center">Les tables de référence</p>
          <?php
    $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id
from animal limit 3';
    aff( 'Animal (Les 3 premiers /' . $nbr( 'animal' ) . ')' );
    $req( $sql );

    aff( 'Race (Les 3 premiers /' . $nbr( 'race' ) . ')' );
    $sql = 'select * from race limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = 'select * from espece limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = "select id, nom_courant, nom_latin,
       concat(left(description, 28), '...'), prix
from espece limit 3";
    $req( $sql );
    ?>

        </div>
  </div>
