<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Triggers</h3>

  <p class="lead">Permettent de gérer les cas où une erreur se produirait pendant l'exécution d'une
    série d'instructions;</p>

</div>


<div class="maingc7">
  <h3 class="lead">Exemple avec plusieurs gestionnaires : </h3>
  <?php
  $pdo = pdo();
  $sql = "select 1";
  //  $pdo->query( $sql );
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


