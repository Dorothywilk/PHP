<?php

namespace GC7;

?>
  <div class="jumbotron">

    <h3 class="meaDo pb10">Transactions</h3>

    <ul class="lead mt10">
      <li>Groupement de plusieurs requêtes, éxécutées complètement toutes en mêm temps, ou pas du tout
      </li>
      <li>Uniquement avec le moteur MySQL InnoDB</li>
    </ul>

  </div>

  <div class="maingc7">

    <?php

  ?>

     
  
      <h2>Autocommit</h2>

      <p>Par defaut, AUTOCOMMIT est activé (Chaque requête est exécutée immédiatement)</p>
      <code>SET AUTOCOMMIT=0;</code> pour le désactiver Permet de faire ensuite <code>ROLLBACK</code> si nécessaire.
      <code>START TRANSACTION</code> pour transaction jusqu'au prochain <code>ROLLBACK</code> ou <code>COMMIT</code>

      <?php

  $sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
  $pdo = $req( $sql );

  $sql = 'SET AUTOCOMMIT=0'; // Sera pour toute la cession
  //$sql = 'START TRANSACTION'; // Ne sera que jusqu'au COMMIT ou ROLLBACK qui mettent fin à la transaction
  $pdo = $req( $sql, $pdo );

  $sql = 'UPDATE espece SET prix=50 where id=5 or id =1';
  $req( $sql, $pdo );

  $sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
  $req( $sql, $pdo );

  //$sql = 'COMMIT'; // Change lignes 74 & 75 simultanément
  $sql = 'ROLLBACK';
  $req( $sql, $pdo );

  echo 'Valeurs réelles 1';
  $sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
  $req( $sql );


  $sql = 'UPDATE espece SET prix=50 where id=5 or id =1';
  $req( $sql, $pdo );


  //$sql = 'COMMIT'; // Change lignes 74 & 75 simultanément
  $sql = 'ROLLBACK';
  $req( $sql, $pdo );


  echo '<hr>Valeurs réelles 2';
  $sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
  $req( $sql, $pdo );


  $sql = 'UPDATE espece SET prix=200 where id=1';
  $req( $sql );
  $sql = 'UPDATE espece SET prix=20 where id=5';
  $req( $sql );

  ?>

        <h2 class="mt10">Jalons</h2>
        <h4>
          <CODE>START TRANSACTION</CODE>...
          <CODE>SAVEPOINT Jalon1;</CODE>...
          <CODE>COMMIT</CODE> ou
          <CODE>ROLLBACK</code>
        </h4>

        <p>NB: Toutes opérations de modification de la structure de la Base de données, et/ou des table, des utilisateurs, etc..., y compris la création d'objets tels les vues et les procédures, entraînent une validation ( = COMMIT) implicite.</p>

        <h2>ACID</h2>

        <p>Critères qu'un système utilisant les transactions doit respecter pour être fiable:</p>
        <ul>
          <li>
            <g>A</g>
            tomicité
          </li>
          (Atôme: Qui ne peut être divisé) De même, une transaction doit former un tout. Toutes les transactions doivent être validées ou aucune ne doit l'être.
          <li>
            <g>C</g>
            ohérence
          </li>
          Les données doivent rester cohérentes, que la transaction se termine sans encombre (Toutes les requêtes sont exécutées <code>COMMIT</code>), qi'il y ait une erreur ou une interruption (Toutes les requêtes sont annulées <code>ROLLBACK</code>).
          <br>Les différentes étapes ne sont pas visibles de l'extérieur de la transaction.
          <li>
            <g>I</g>
            solation
          </li>
          Chaque transaction ne doit pas interagir avec une autre. (Les transactions ne peuvent pas s'imbriquer entre elles) De plus, pour chaque opération (UPDATE surtout), un verrou est posé, empêchant toute opération autre sur l'item concerné, tant que ni COMMIT, ni ROLLBACK ne soit effectué, que cela soit par commande directe ou conséquence d'une autre opération qui le déclenche.
          <li>
            <g>D</g>
            urabilité
          </li>
          En cas de COMMIT, les données sont véritablement enregistrées dans la BdD.

        </ul>
        <?php
//
//  $sql = 'SELECT nom, pere_id, commentaires from animal where id=71';
//  $req( $sql );


  echo str_repeat( '<br>&nbsp;', 1 );

  /*
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
