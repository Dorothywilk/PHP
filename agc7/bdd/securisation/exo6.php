<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron" xmlns="http://www.w3.org/1999/html">

  <h1 class="meaDo pb10"><a
      href="http://exercices.openclassrooms.com/assessment/223?login=441267&tk=31e3340fac83f036e28bc0016e777dc0&sbd=2016-02-01&sbdtk=fa78d6dd3126b956265a25af9b322d55"
      target="_blank">Exo final (6)</a></h1>

  <p class="lead">(8/11/2017 - Env. 10 jours pour corr)</p>

  <h3 class="lead">NB: Installer
    <g>exo6_data.sql</g>
  </h3>

</div>


<div class="maingc7">

  <p class="jumbotron lead pt10">1/ Page Accueil: Nb de commentaires (Stocké et automatiquement mise
    à jour)</p>

  <ul class="fa-ul">Outil pour ajouter/supprimer une colonne quelle soit présente ou pas :
    <li class="lead"><i class="fa fa-check-square-o"></i> Création procédure perso pour savoir si
      une
      colonne existe<br>&nbsp;&nbsp;&nbsp;&nbsp;<code>columnExists(colonne, table, reponse)</code>
    </li>
    <li class="lead"><i class="fa fa-check-square-o"></i> Création procédure perso pour ajouter une
      colonne<br>&nbsp;&nbsp;&nbsp;&nbsp;<code>
        <g>addColumn</g>
        (colonne, table, reponse)</code></li>
    <li class="lead"><i class="fa fa-check-square-o"></i> Création procédure perso pour supprimer
      une colonne<br>&nbsp;&nbsp;&nbsp;&nbsp;<code>
        <g>dropColumn</g>
        (colonne, table, reponse)</code></li>
  </ul>

  <?php

  $pdo = pdo( 'ocr3' );

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
-- END|";
  affLign( $sql );
  $pdo->query( $sql );
  //
  //  $sql = "call columnExists('nb_commentaires', 'article', @columnExists);";
  //  affLign( $sql );
  //  $pdo->query( $sql );
  //
  //  $sql = "SELECT @columnExists";
  //  $req( $sql, $pdo );


  echo 'Éxécution de la procédure addColumn()';


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

          CONCAT('select ', concat('\"Ajout Colonne ', @theColumn,
                 ' impossible: Déjà présente dans la table ',
                 @theTable, '\"')),

          CONCAT(
              'ALTER TABLE ', @theTable,
              ' ADD COLUMN ', @theColumn,
              ' INT UNSIGNED NULL') -- ToDoLi: Paramétrer ces options
      )
    )
    INTO p_addColumn;
    SET @query = p_addColumn;
    PREPARE st FROM @query;
    EXECUTE st;
    -- END |
    END;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "call addColumn('nb_commentaires', 'article', @p_addColumn);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select @p_addColumn as Résultat;";
  $req( $sql, $pdo );


  $sql = "select if(
  @columnExists,'<p class=\"fdBleuDo\">La colonne existe</p>',
  '<p class=\"fdRougeDo\">La colonne n\'existe pas</p>'
) as columnExists";
  affLign( "select if(
    @columnExists,'La colonne existe',  -- En bleu
    'La colonne n\'existe pas'          -- En rouge
  ) as columnExists" );
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

          CONCAT('ALTER TABLE ', @theTable,
                 ' DROP COLUMN ', @theColumn),

          CONCAT('SELECT ', concat('\"Suppression Colonne ',
                @theColumn, \" impossible: N'existe pas dans
                la table \",@theTable, '\"'))
      )
    )
    INTO p_dropColumn;
    SET @query = p_dropColumn;
    PREPARE st FROM @query;
    EXECUTE st;
  -- END|
  END;
DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL dropColumn('nb_commentaires', 'article', @doro);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select @doro as Résultat;";
  $req( $sql, $pdo );
  ?>

  <h3>Relance même process</h3>

  <?php
  $sql = "CALL dropColumn('nb_commentaires', 'article', @doro);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select @doro as Résultat;";
  $req( $sql, $pdo );

  ?>

  <h3>=> Ajout d'une colonne dans articles</h3>

  <?php

  $sql = "call addColumn('nb_commentaires', 'article', @p_addColumn);";
  affLign( $sql );
  $pdo->query( $sql );


  //  $sql = "show columns from article";
  $sql = "SELECT column_name, column_type from information_schema.columns
where table_schema='ocr3'
  and table_name='article'
  and column_name like '%comment%'";
  $req( $sql, $pdo );

  ?>

  <h3>=> Liaison à un trigger pour misa à jour automatique<br>
    de la colonne nb_commentaires dans Article</h3>

  <?php

  $sql = "DROP TRIGGER IF EXISTS after_insert_commentaire;

-- Actualise nombre de commentaire par article

CREATE TRIGGER `after_insert_commentaire` AFTER INSERT
       ON `commentaire` FOR EACH ROW
BEGIN
  UPDATE article
  SET nb_commentaires =
  (SELECT count(*)
   FROM commentaire
   WHERE article_id = article.id
   GROUP BY article_id);
END;";
  affLign( $sql );
  $pdo->query( $sql );
  //  $req( $sql, $pdo );

  ?>

  <h2>Cf.
    <g>exo6.sql</g>
    pour détail du code complet.
  </h2>
  <hr>

  <?php

  echo NULL + 1;


  echo str_repeat( '<br>', 3 ); // 28


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
  echo str_repeat( '<br>', 3 ); // 28
  ?>
</div>
