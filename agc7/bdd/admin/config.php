<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/configuration-et-options"
      target="_blank">Configuration</a></h1>

  <p class="lead">Variables systèmes</p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo();

  //  affLign( $sql );
  //  $pdo->query( $sql );

  ?>
  <h3>Par défaut, variables de session affichées</h3>
  <?php

  $sql = "SHOW GLOBAL VARIABLES LIKE 'auto%'
-- Affichages des variables au niveau GLOBAL";
  $req( $sql, $pdo );

  $sql = "SELECT @@LOCAL.autocommit";
  $req( $sql, $pdo );

  $sql = "SELECT @@LAST_INSERT_ID
-- Exemple d'une variable n'existant qu'au niveau SESSION
-- Si GLOBAL était précisé => Erreur
-- (Pas avec SHOW qui renverrait la variable de la session)";
  $req( $sql, $pdo );

  $sql = "SHOW VARIABLES LIKE '%uni%'";
  $req( $sql, $pdo );

  ?>
  <h3>Modification d'une variable système</h3>
  <?php

  $sql = "SELECT @@GLOBAL.autocommit, @@SESSION.autocommit";
  $req( $sql, $pdo );

  $sql = "SET @@GLOBAL.autocommit=0
-- Sans précision de GLOBAL, c'est au niveau session";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT @@GLOBAL.autocommit, @@SESSION.autocommit";
  $req( $sql, $pdo );


  $sql = "SELECT @@datadir
-- Une variable système définie dans my.ini
-- Dans ce fichier ; ou # pour les commentaires";
  $req( $sql, $pdo );

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
