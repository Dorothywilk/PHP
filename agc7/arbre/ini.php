<?php namespace GC7;
?>

<div class="jumbotron">

  <h1 class="meaDo pb10"><a href="#" target="_blank">Arbre</a></h1>

  <p class="lead">Méthode des bornes</p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo();

  //  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "SELECT 1";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
