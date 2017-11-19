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

  $sql = "SHOW VARIABLES LIKE 'auto%'";
  $req( $sql, $pdo );

  $sql = "SELECT @@autocommit";
  $req( $sql, $pdo );

  $sql = "SHOW VARIABLES LIKE '%uni%'";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
