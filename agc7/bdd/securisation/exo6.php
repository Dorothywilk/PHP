<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron" xmlns="http://www.w3.org/1999/html">

  <h3 class="meaDo pb10">Exo final (6)</h3>

  <p class="lead"><a
      href="http://exercices.openclassrooms.com/assessment/223?login=441267&tk=31e3340fac83f036e28bc0016e777dc0&sbd=2016-02-01&sbdtk=fa78d6dd3126b956265a25af9b322d55"
      target="_blank">Mission</a></p>

  <p class="lead">(8/11/2017 - Env. 5 jours pour corr)</p>

</div>


<div class="maingc7">

  <p class="jumbotron lead pt10">1/ Page Accueil: Nb de commentaires (Stocké et automatiquement mise
    à jour)</p>


  <p class="lead"><i class="fa fa-check-square-o"></i> Création procédure perso pour savoir si une
    colonne existe</p>


  <h3>Recherche solution pour tester présence d'une colonne</h3>
  <?php

  $pdo = pdo( 'ocr2' );

  $sql = "-- Retourne 1 si la colonne existe ou 0 sinon

DROP PROCEDURE IF EXISTS `columnExists`;
-- DELIMITER |

CREATE PROCEDURE `columnExists`(
  IN `theColumn` varchar(255),
  IN `theTable` varchar(255),
  OUT `p_exists` int
)
LANGUAGE SQL NOT DETERMINISTIC CONTAINS SQL
SQL SECURITY DEFINER COMMENT ''
BEGIN
  SELECT count(*) into p_exists from information_schema.columns
  where table_name =theTable and column_name=theColumn;
END;
--END |";
  //  affLign( $sql );
  //  $pdo->query( $sql );
  //
  //  $sql = "call columnExists('nb_commentaires', 'article', @columnExists);";
  //  affLign( $sql );
  //  $pdo->query( $sql );


  $sql = "-- ADD COLUMN si elle n'existe pas déjà
DROP PROCEDURE IF EXISTS addColumn;
-- DELIMITER |
CREATE PROCEDURE addColumn(
  IN  theColumn   VARCHAR(255),
  IN  theTable    VARCHAR(255),
  OUT p_addColumn VARCHAR(255)
)
  BEGIN
    CALL columnExists(theColumn, theTable, @columnExists);
    SET @theColumn = theColumn;
    SET @theTable = theTable;

    SELECT (
      if(
          @columnExists,
          concat('select ', concat('\"Ajout Colonne ', @theColumn,
           ' impossible: Déjà présente dans la table ',
           @theTable, '\"')),
          CONCAT(
              'ALTER TABLE ', @theTable,
              ' ADD COLUMN ', @theColumn,
              ' INT UNSIGNED NULL')
      )
    )
    INTO p_addColumn;
    SET @query = p_addColumn;
    PREPARE st FROM @query;
    EXECUTE st;
  -- END|
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "call addColumn('nb123_commentaires', 'article', @p_addColumn);";
  $pdo->query( $sql );

  $sql = "select @p_addColumn as Résultat;";
  $req( $sql, $pdo );


  $sql = "select if(
  @columnExists,'<p class=\"fdBleuDo\">La colonne existe</p>',
  '<p class=\"fdRougeDo\">La colonne n\'existe pas</p>'
) as columnExists";
  //  affLign( "select if(
  //  @columnExists,'La colonne existe',  -- En bleu
  //  'La colonne n\'existe pas'          -- En rouge
  //) as columnExists" );
  $req( $sql, $pdo, 0 );


  // Effacement
  $sql = "-- DROP COLUMN (si elle existe)
DROP PROCEDURE IF EXISTS dropColumn;
-- DELIMITER |
CREATE PROCEDURE dropColumn(
  IN  theColumn    VARCHAR(255),
  IN  theTable     VARCHAR(255),
  OUT p_dropColumn VARCHAR(255)
)
  BEGIN
    CALL columnExists(theColumn, theTable, @columnExists);
    SET @theColumn = theColumn;
    SET @theTable = theTable;

    SELECT (
      if(
          @columnExists,
          CONCAT(
              'ALTER TABLE ', @theTable,
              ' DROP COLUMN ', @theColumn),
          concat('SELECT ', concat('\"Suppression Colonne ', @theColumn,
           \" impossible: N'existe pas dans la table \",
           @theTable, '\"'))
      )
    )
    INTO p_dropColumn;
    SET @query = p_dropColumn;
    PREPARE st FROM @query;
    EXECUTE st;
  -- END|
  END;
DELIMITER ;";
  //  affLign( $sql );
  //  $pdo->query( $sql );
  //
  $sql = "CALL dropColumn('nb_commentaires', 'article', @p_dropColumn);";
  affLign( $sql );
  $pdo->query( $sql );
  //
  $sql = "select @p_dropColumn as Résultat;";
  $req( $sql, $pdo );

  // Ajout colonne
  $sql = "SET @query = (select if
(
  @columnExists,

  'select \"Colonne déjà présentee\"',

  CONCAT(
    'ALTER TABLE article
     ADD COLUMN nb_commentaires
         INT UNSIGNED NULL AFTER date_publication'
  )
));";
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "SELECT @query";
  //  $req( $sql, $pdo );

  $sql = "PREPARE st FROM @query;";
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "EXECUTE st;";
  //    $req( $sql, $pdo );


  //  $pod = pdo();

  //  $sql = "show columns from article";
  $sql = "SELECT column_name, column_type from information_schema.columns
where table_schema='ocr2'
  and table_name='article'
  and column_name like '%comment%'";
  $req( $sql );
  // ALTER TABLE `article`
  //	DROP COLUMN `nb_commentaires`;
  /*
  ?>
      <h3>Procédure d'ajout de la colonne directement</h3>

      <?php


    $sql = "SET @query =
  (SELECT
    IF(

       (
         SELECT COUNT(1)
         FROM INFORMATION_SCHEMA.COLUMNS

         WHERE
          TABLE_SCHEMA=database()
          AND TABLE_NAME = 'article'
          AND COLUMN_NAME = 'nb_commentaires'
       ) = 0,

       CONCAT(
           'ALTER TABLE article ADD COLUMN nb_commentaires varchar(255)'
             ),

       'SELECT \'ALREADY EXISTS\''
      )
    );";
    affLign( $sql );
    $pdo->query( $sql );

    $sql = "SELECT @query";
    $req( $sql, $pdo );

    $sql = "PREPARE st FROM @query;";
    affLign( $sql );
    $pdo->query( $sql );

    $sql = "EXECUTE st;";
    $req( $sql, $pdo );

  */
  //  $req($sql, $pdo);


  echo str_repeat( '<br>', 28 ); // 28

  ?>
  <p class="lead">=> Ajout d'une colonne dans article, liée à un trigger</p>
  <?php

  $pdo = pdo( 'ocr2' );

  $sql = "ALTER TABLE `article`
ADD COLUMN `nb_commentaires` INT(11) UNSIGNED NULL
    AFTER `date_publication`;";
  affLign( $sql );
  //  $pdo->query( $sql );
  //  $req( $sql, $pdo );

  ?>

  <p class="jumbotron lead pt10">2/ Affichage Article: Un résumé doit apparaître (Si absent, les 150
    premiers caractères du contenu)</p>
  <?php

  $pdo = pdo( 'ocr2' );

  $sql = "select * from article limit 3";
  // affLign( $sql );
  // $pdo->query( $sql );
  //  $req( $sql, $pdo );

  ?>


  <p class="jumbotron lead pt10">3/ Mise en place de stats stockées dont la maj se fera à la demande
    :
  <ul>
    <li>Le nombre d’articles écrits,</li>
    <li>La date du dernier article,</li>
    <li>Le nombre de commentaires écrits</li>
    <li>Et la date du dernier commentaire.</li>
  </ul>
  </p>


  <!--
// $pdo = pdo( 'ocr2' );

// $sql = 'select * from article limit 3';

//  affLign( $sql );
// $pdo->query( $sql );
//  $req( $sql, $pdo );
-->

  <?php
  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>
