<?php namespace GC7;
?>

<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/la-representation-intervallaire" target="_blank">Gestion
      d'arbres par représentation intervallaire</a>
  </h1>

  <p class="lead">Méthodes</p>
  <ul>
    <ol>
      <li>Auto-jointure</li>
      <li><a href="http://sqlpro.developpez.com/cours/arborescence/" target="_blank">Représentation
          intervallaire</a>

        <p>(Compris représentation XML & lien pour transfo récursive en bornes)</p></li>
    </ol>
  </ul>

  <p class="lead">Cf.
    <g>exemple.sql</g>
    pour les diverses requêtes.
  </p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo();

  //  $sql = "SELECT 1";
  //  $req( $sql, $pdo );

  //  affLign( $sql ); // Pour requête sans affichage de réponse
  //  $pdo->query( $sql );

  // TODoLi Étudier ce tuto

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
