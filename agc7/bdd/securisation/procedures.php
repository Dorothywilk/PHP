<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Procédures</h3>

  <p class="lead">...</p>
  <ul class="lead mt10">
    <li>...
    </li>
    <li>...
    </li>
  </ul>

</div>

<div class="maingc7">

  <h3>...</h3>

  <?php
  $bdd = pdo();

  $sql = 'SELECT 1';
  affLign( $sql );
  $bdd->query( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>

