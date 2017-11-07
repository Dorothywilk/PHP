<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Tables temporaires</h3>

  <p class="lead">...</p>
</div>

<div class="maingc7">
  <?php

  $pdo = pdo();
  $sql = "CREATE TEMPORARY TABLE TMP_Animal (
    id INT UNSIGNED PRIMARY KEY,
    nom VARCHAR(30),
    espece_id INT UNSIGNED,
    sexe CHAR(1)
);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "DESCRIBE TMP_Animal;";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
