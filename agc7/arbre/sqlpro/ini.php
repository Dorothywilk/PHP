<?php namespace GC7;
?>

<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/la-representation-intervallaire" target="_blank">Gestion
      d'arbres par représentation intervallaire (RI)</a>
  </h1>

  <p class="lead">Méthodes</p>
  <ul>
    <ol>
      <li>Auto-jointure</li>
      <li><a href="http://sqlpro.developpez.com/cours/arborescence/" target="_blank">Représentation
          intervallaire</a>

        <p>(Compris représentation XML & lien pour transfo récursive en bornes)</p></li>
      <ul>
        <li><a href="https://openclassrooms.com/courses/la-representation-intervallaire"
               target="_blank">Tuto OOC</a> - Fichier MySQL: C:\laragon\www\do\agc7\arbre\ooc.sql
        </li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>

    </ol>
  </ul>

  <p class="lead">Cf.
    <g>bases_representation_intervallaire.sql</g>
    pour les diverses requêtes de base.
  </p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo();

  //  $sql = "SELECT 1";
  //  $req( $sql, $pdo );

  //  affLign( $sql ); // Pour requête sans affichage de réponse
  //  $pdo->query( $sql );

  // TODoLi Étudier ce tuto OOC - En cours


  //todoli C:\laragon\www\do\agc7\arbre\sqlpro\SLIDES_3013.ppt


  //todoli https://www.developpez.net/forums/d1609579/bases-donnees/mysql/requetes/representation-intervallaire-affichage/


  // Base ci-dessous
  //todoli C:\laragon\www\do\agc7\arbre\exemple_proc.sql


  // todoli https://octobercms.com/forum/post/how-to-use-showtree-option-in-list-page
  // Et
  // Nested Tree
  // https://octobercms.com/docs/database/traits

  // ToDoLi Go dev pour xu: Ecriture des proc + triggers pour nest_left, nest_right et nestè_depht (Exemple: rainlab_blog_categories et rainlab_forum_channels)

  // Si besoin: Revenir sur tuto SQLPro pour procs diverses // arbre

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
