<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Verrous</h3>

  <ul class="lead mt10">
    <li>Sécurisation des requêtes par blocage ponctuel et partiel de l'accès aux données</li>
    <li>De 2 types: Verrous de table, verrous de ligne</li>
  </ul>


  <ol class="lead">

    <li>Verrous de tables:</li>
    <ul>
      <li><code>LOCK TABLES tables [AS alias_table] [READ | WRITE][, ...]</code></li>
      <li><code>UNLOCK TABLES</code> déverrouille toutes les tables verrouillées</li>
    </ul>

    <li>Verrous de lignes:</li>
    <ol>
      <li>
        Partagé (= READ): <code>IN SHARE MODE</code>
      </li>
      <li>
        Exclusif (= WRITE): <code>FOR UPDATE</code>
      </li>
    </ol>
  </ol>
  <p class="lead">Automatiquement exclusifs sur les lignes concernées en cas d'<code>INSERT</code>,
    d'
    <code>UPDATE</code> ou de <code>DELETE</code><br> Intéressantes uniquement dans les
    transactions, elles s'écrivent en fin de requête <code>SELECT</code></p>

</div>

<div class="maingc7">

  <h2>Principe</h2>

  <p>Une cession qui pose un verrou ne peut opérer selon le niveau de verrou (READ || WRITE) que sur
    les lignes | tables qu'elle a vérouillé.</p>

  <p>Attention: Avec les transactions (Rappel: InnoDB uniquement), <code>START TRANSACTION</code>
    ôte les verrous et <code>LOCK TABLES</code> et <code>UNLOCK TABLES</code> provoquent une
    validation implicite si elles sont exécutées à l'intérieur d'une transaction => Utiliser <code>SET
      AUTOCOMMIT = 0</code></p>
Conclusion:
  <ul>
    <li>On pose un verrou partagé lorsqu'on fait une requête dans le but de lire des données.</li>
    <li>On pose un verrou exclusif lorsqu'on fait une requête dans le but (immédiat ou non) de modifier des données.
    </li>
    <li>Un verrou partagé sur les lignes x va permettre aux autres sessions d'obtenir également un verrou partagé sur les lignes x, mais pas d'obtenir un verrou exclusif.</li>
    <li>Un verrou exclusif sur les lignes x va empêcher les autres sessions d'obtenir un verrou sur les lignes x, qu'il soit partagé ou exclusif.</li>
  </ul>

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
    </div>
    */ ?>
</div>
