<?php
namespace GC7;
?>
<div class="jumbotron">

  <h1 class="meaDo mt10 pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/calculs-sur-les-donnees-temporelles"
      target="_blank">Calculs de dates</a></h1>

  <ul class="lead">
    <li>DATEDIFF(): Donne un résultat en nombre de jours;</li>
    <li>TIMEDIFF(): Donne un résultat sous forme de TIME;</li>
    <li>TIMESTAMPDIFF(): Donne le résultat dans l'unité de temps souhaitée (Heure, minutes,
      secondes, mois, etc…).
    </li>
  </ul>

</div>

<div class="maingc7">

  <?php


  echo '<h3 class="mt10">Bases - Diff entre 2 dates</h3>';

  $sql = 'SELECT DATEDIFF("2011-12-25 22:12:18","2011-11-10")
       AS "nbre de jours entre le 2011-12-25 22:12:18 et le 2011-11-10"';
  $req( $sql );


  $sql = 'SELECT
-- Avec des DATETIME
"2011-10-08 12:35:45" AS datetime1,
"2011-10-07 16:00:25" AS datetime2,
TIMEDIFF("2011-10-08 12:35:45", "2011-10-07 16:00:25") as diffDATETIME,
-- Avec des TIME
"12:35:45" AS time1, "00:00:25" AS time2,
TIMEDIFF("12:35:45", "00:00:25") as diffTIME';
  $req( $sql );


  $sql = 'SELECT
    TIMESTAMPDIFF(DAY, "2011-11-10", "2011-12-25") AS nb_jours,
    TIMESTAMPDIFF(HOUR,"2011-11-10", "2011-12-25 22:00:00")
                    AS nb_heures_def,
    TIMESTAMPDIFF(HOUR,"2011-11-10 14:00:00", "2011-12-25 22:00:00")
                    AS nb_heures,
    TIMESTAMPDIFF(QUARTER,"2011-11-10 14:00:00", "2012-08-25 22:00:00")
                    AS nb_trimestres;';
  $req( $sql );

  echo '<h3>Intervalles - ADD</h3>';
  ?>
  <ul>
    <li>ADDDATE (date, INTERVAL quantite unité): S'utilise avec un INTERVAL<br>
      ou un nombre de jours.
    </li>
    <li>DATE_ADD (date, INTERVAL quantite unite): S'utilise avec un INTERVAL.</li>
    <li>TIMESTAMPADD (unité, quantité, date): N'utilise pas d'INTERVAL<br>
      mais un nombre plus limité d'unités de temps.
    </li>
  </ul>

  <?php
  $sql = 'SELECT ADDDATE("2011-05-21", INTERVAL 3 MONTH) AS date_interval,
        -- Avec DATE et INTERVAL
       ADDDATE("2011-05-21 12:15:56",
          INTERVAL "3 02:10:32" DAY_SECOND) AS datetime_interval,
        -- Avec DATETIME et INTERVAL
       ADDDATE("2011-05-21", 12) AS date_nombre_jours,
        -- Avec DATE et nombre de jours
       ADDDATE("2011-05-21 12:15:56", 42) AS datetime_nombre_jours
       -- Avec DATETIME et nombre de jours';
  $req( $sql );


  $sql = 'SELECT DATE_ADD("2011-05-21", INTERVAL 3 MONTH) AS avec_DATE,
      -- Avec DATE
      DATE_ADD("2011-05-21 12:15:56", INTERVAL "3 02:10:32" DAY_SECOND)
              AS avec_DATETIME,
      -- Avec DATETIME,
      "2011-05-21" + INTERVAL 5 DAY AS droite,
      -- Avec DATE et intervalle à droite
      INTERVAL "3 12" DAY_HOUR + "2011-05-21 12:15:56" AS gauche
      -- Avec DATETIME et intervalle à gauche';
  $req( $sql );

  $sql = 'SELECT NOW() AS Maintenant, ADDTIME(NOW(), "01:00:00") AS DansUneHeure,
       -- Avec un DATETIME
       CURRENT_TIME() AS HeureCourante,
       ADDTIME(CURRENT_TIME(), "03:20:02") AS PlusTard;
       -- Avec un TIME';
  $req( $sql );


  echo '<h3>Intervalles - SUB</h3>';

  $sql = 'SELECT SUBDATE("2011-05-21 12:15:56",
       INTERVAL "3 02:10:32" DAY_SECOND) AS SUBDATE1,
       SUBDATE("2011-05-21", 12) AS SUBDATE2,
       DATE_SUB("2011-05-21", INTERVAL 3 MONTH) AS DATE_SUB';
  $req( $sql );


  $sql = 'SELECT SUBTIME("2011-05-21 12:15:56", "18:35:15") AS SUBTIME1,
       SUBTIME("12:15:56", "8:35:15") AS SUBTIME2,
       "2011-05-21" - INTERVAL 5 DAY;';
  $req( $sql );


  echo '<h3>FROM_UNIXTIME & UNIX_TIMESTAMP</h3>';

  $sql = 'SELECT FROM_UNIXTIME(1325595287),
       FROM_UNIXTIME(1360217100) as DateEntréeGinandrée,
       UNIX_TIMESTAMP("2012-01-03 13:54:47")';
  $req( $sql );


  echo '<h3>MAKEDATE & MAKETIME</h3>';

  $sql = 'SELECT MAKEDATE(2012, 60) AS 60eJour2012,
       MAKETIME(3, 45, 34) AS heureCree';
  $req( $sql );


  echo '<h3>SEC_TO_TIME & TIME_TO_SEC</h3>';

  $sql = 'SELECT SEC_TO_TIME(102569), TIME_TO_SEC("01:00:30")';
  $req( $sql );


  echo '<h3>LAST_DAY</h3>';

  $sql = "SELECT LAST_DAY('2017-02-03') AS fevrier2012,
       LAST_DAY('2100-02-03') AS fevrier2100;";
  $req( $sql );


  echo '<h1>Exemples</h1>';

  $sql = "
-- Animaux nés en juin
SELECT id, nom, date_naissance
FROM Animal
WHERE MONTH(date_naissance) = 6;";
  $req( $sql );


  $sql = "
-- Les 3 premiers animaux nés en février
SELECT id, nom, date_naissance
FROM Animal
WHERE MONTH(date_naissance) = 2 limit 3";
  $req( $sql );


  $sql = "-- Jour (en chiffres) et mois de naissance (en toutes lettres)
-- des tortues et des chats nés avant 2007.

SELECT DATE_FORMAT(date_naissance, '%e %M'), nom, nom_courant
FROM animal
    INNER JOIN espece
    ON espece.id = espece_id
WHERE
    (nom_courant LIKE '%tortue%'
  OR
    nom_courant LIKE '%chat%')
  AND
    year(date_naissance) < 2007";
  $req( $sql );


  $sql = '-- Calcul du décalage en minutes de chatons d\'une même portée
-- (Id des chatons fourni).

SELECT TIMESTAMPDIFF(MINUTE,
                     (
                       SELECT MIN(date_naissance)
                       FROM Animal
                       WHERE id IN (13, 18, 20, 22)
                     ),
                     (
                       SELECT MAX(date_naissance)
                       FROM Animal
                       WHERE id IN (13, 18, 20, 22)
                     )
       ) AS "Décalage max de DoB des chatons
         d\'une même portée (En minutes)"';
  $req( $sql );


  $sql = "
-- Pour les chiens et les chats (espece_id = 1 et 2 respectivement),
-- afficher les différentes dates de naissance des portées d'au moins
-- deux individus (format JJ/MM/AAAA), ainsi que le nombre d'individus
-- pour chacune de ces portées.

SELECT DATE_FORMAT(date_naissance, '%d/%m/%Y') as DdN,
       COUNT(*) as nb_individus,
       GROUP_CONCAT(' ', nom, concat(' (',espece_id,')')) as nom
FROM animal
WHERE espece_id IN (1, 2)
GROUP BY DATE_FORMAT(date_naissance, '%d/%m/%Y')
HAVING nb_individus > 1";
  $req( $sql );


  $sql = "
-- Calculer combien de chiens (espece_id = 1) sont nés en moyenne
-- chaque année entre 2006 et 2010 (sachant qu'on a eu au moins
-- une naissance chaque année).

SELECT avg(nb)

from (
  SELECT count(id) as nb
  from animal

  where espece_id=1
        and year(date_naissance)>2005
        and year(date_naissance)<2011

  group by year(date_naissance)
) as temp
";
  $req( $sql );


  $sql = "
-- Détail des naissances dans l'exemple précédent

SELECT year(date_naissance), count(id) as NbreDeChien
from animal

where espece_id=1
      and year(date_naissance)>2005
      and year(date_naissance)<2011

group by year(date_naissance) with rollup

";
  $req( $sql );
  echo 'Soit: 21 naissances sur 5 années: 21 / 5 = ' . 21 / 5;


  $sql = "
-- Afficher la date au format ISO du 5e anniversaire des animaux
-- dont on connaît soit le père, soit la mère.

select date_format(adddate(date_naissance, interval 5 year),
       GET_FORMAT(DATE,'ISO')) as 'Date ISOdu 5<sup>ème</sup> Anniversaire',
       id, nom
from animal
where pere_id is not null
      or mere_id is not null";
  $req( $sql );
  echo '<br>&nbsp';

  /*
  ?>
    <div class="jumbotron">
      <p class="h3-responsive">Les tables de référence</p>
      <?php
      $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id from animal limit 3';
      aff( 'Animal( Les 3 premiers ' . ' / ' . $nbr( 'animal' ) . ')' );
      $req( $sql );

      aff( 'Race( Les 3 premiers ' . ' / ' . $nbr( 'race' ) . ')' );
      $sql = 'select * from race limit 3';
      $req( $sql );

      aff( 'Espèce( Les 3 premiers ' . ' / ' . $nbr( 'espece' ) . ')' );
      $sql = 'select * from espece limit 3';
      $req( $sql );

      aff( 'Espèce( Les 3 premiers / ' . $nbr( 'espece' ) . ')' );
      $sql = "select id, nom_courant, nom_latin, concat(left(description, 28), '...'), prix from espece limit 3";
      $req( $sql );
  </div >
  */
  ?>
</div>
