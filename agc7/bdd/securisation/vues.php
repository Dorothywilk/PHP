<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Vues</h3>

  <p class="lead">Requête de selection nommée.</p>

</div>

<div class="maingc7">

  <?php

  $pdo = pdo();
  $sql = "SELECT 1";
  $req( $sql );

  //  affLign( $sql );
  //  $pdo->query( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


