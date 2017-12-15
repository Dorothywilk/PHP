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
      <li><i class="fa fa-check-square-o"></i> Auto-jointure</li>
      <li><i class="fa fa-check-square-o"></i> <a
          href="http://sqlpro.developpez.com/cours/arborescence/" target="_blank">Représentation
          intervallaire</a>

        <p>(Compris représentation XML & lien pour transfo récursive en bornes)<br>
          Fichier
          <g>exemple_pro.sql</g>
          <br> Procédures Groupe avec
          <g>LOOP</g>
          (Sur structure non standard).
        </p>
      </li>
      <li><i class="fa fa-check-square-o"></i> <a
          href="https://openclassrooms.com/courses/la-representation-intervallaire"
          target="_blank">Tuto OOC</a> - Fichier MySQL: ~\agc7\arbre\ooc.sql
      </li>
      <li><a href="http://laravel.sillo.org/cours-laravel-5-5-les-donnees-gerer-un-arbre/" target="_blank">Laravel Sillo</a></li>
      <li></li>

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

  // TodoDo & Li Observer vieille requête groupe


  //https://www.developpez.net/forums/d1609579/bases-donnees/mysql/requetes/representation-intervallaire-affichage/
  // Fichier exemple_pro.sql - Comporte porcédure Groupe


  // https://octobercms.com/forum/post/how-to-use-showtree-option-in-list-page
  // Et
  // Nested Tree
  // https://octobercms.com/docs/database/traits


  // Voir fin du tuto 2 (Représentation intervallaire
  // (Compris représentation XML & lien pour transfo récursive en bornes)
  // Procédures types de base.


  // TodoLi https://forum.phpfrance.com/modelisation-securite/arbre-intervallaire-gestion-deplacement-sous-arbres-t266966.html
  //include 'triCombine.php'; // Autre exemple


  // TodoLi Reprise du tuto Laravel http://laravel.sillo.org/cours-laravel-5-5-les-donnees-gerer-un-arbre/


  // ToDoLi Go dev pour xu: Ecriture des proc + triggers pour nest_left, nest_right et nestè_depht (Exemple: rainlab_blog_categories et rainlab_forum_channels)

  // Si besoin: Revenir sur tuto SQLPro pour procs diverses // arbre


  echo str_repeat( '<br>', 25 ); // 28
  // Rappel doc SLIDES_3013.ppt (Chapitre / optimisations)
  ?>
</div>
