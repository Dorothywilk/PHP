<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Verrous</h3>

  <ul class="lead mt10">
    <li>Sécurisation des requêtes par blocage ponctuel et partiel de l'accès aux données
    </li>
    <li>Différentes sortes: Verrous de table, verrous de ligne</li>
  </ul>

</div>

<div class="maingc7">

  <h2>Principe</h2>
  <?php
  $sql = 'SELECT 1';
  $pdo = $req( $sql );


  echo str_repeat( '<br>&nbsp;', 25 );

  /*
  ?>
  ?>
    <div class="jumbotron">
      <p class="h3-responsive">Les tables de référence</p>
      <?php
      $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id from animal limit 3';
      aff( 'Animal (Les 3 premiers ' . '/' . $nbr( 'animal' ) . ')' );
      $req( $sql );

      aff( 'Race (Les 3 premiers ' . '/' . $nbr( 'race' ) . ')' );
      $sql = 'select * from race limit 3';
      $req( $sql );

      aff( 'Espèce (Les 3 premiers ' . '/' . $nbr( 'espece' ) . ')' );
      $sql = 'select * from espece limit 3';
      $req( $sql );

      aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
      $sql = "select id, nom_courant, nom_latin, concat(left(description, 28), '...'), prix from espece limit 3";
      $req( $sql );
      ?>
  </div >
  */
  ?>
</div>
