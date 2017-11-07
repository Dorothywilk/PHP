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
  $sql = "select 1";
  //  affLign( $sql );
  //  $pdo->query( $sql );
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
