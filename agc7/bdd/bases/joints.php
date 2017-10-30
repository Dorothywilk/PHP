<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Jointure et sous-requêtes</h3>

  <p class="lead">
    <i class="fa fa-edit"></i> Pour mises à jour (<code>UPDATE</code>) & insertions (<code>INSERT INTO</code>)
  </p>
</div>
<div class="maingc7">
  <?php
  // Req pour initiales en maj
  // update animal set espece = CONCAT(UCASE(SUBSTRING(espece, 1, 1)), LCASE(SUBSTRING(espece, 2)))

  /*
  // Requete qui attribue un propriétaire aléatoire, parfois null
  // Annuler clé étrangère pour l'occasion
   $sql = 'update animaux set clt_id =
  ( select id from users where id = (1 +floor(rand()*21)) limit 1);';
  $req($sql);
  */

  /*
  // Ajout d'une table dans un autre
  echo 'Animaux: ' . $nbr( 'animaux' ) . '<br>'; // Aff 60
  //echo ('(Test)'); // pets contient 4 items
  $sql = 'INSERT into animaux 	(nom, sexe, date_naissance, espece)
  select pets.nom, pets.sexe, pets.date_naissance, pets.espece from pets';
  $req( $sql );
  echo 'Animaux: ' . $nbr( 'animaux' ) . '<br>'; // Aff 64
  */
  //    echo '<p>Ok</p>';
  $sql = 'UPDATE animaux SET commentaires = "" WHERE id=39';
  $req( $sql, null, 1 );


  $sql = 'SELECT id, nom, espece, sexe, commentaires
FROM animaux ORDER BY id DESC limit 20, 3';
  $req( $sql );


  $sql = 'UPDATE animaux SET commentaires = "Très maligne" WHERE id=39';
  $req( $sql );

  $sql = 'SELECT id, nom, espece, sexe, commentaires
FROM animaux ORDER BY id DESC limit 20, 3';
  $req( $sql );


  ?>
  <div class="jumbotron jumbotronRef">
    <h3 class="h3-responsive text-center">Les tables de référence</h3>
    <?php
    aff( 'Pets (Les 4 premiers /' . $nbr( 'pets' ) . ')' );
    $sql = 'select id, clt_id, nom, espece, sexe
from pets limit 4';
    $req( $sql );

    aff( 'Animaux (Les 3 premiers /' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
    $sql = 'select id, clt_id, nom, espece, sexe, commentaires
from animaux where clt_id > "" limit 3';
    $req( $sql );

    aff( 'Users (Les 3 premiers /' . $nbr( 'users' ) . ')' );
    $sql = 'select id, name as pseudo, email, role
from users where id in (1,15,16)';
    $req( $sql );
    ?>
  </div>
</div>
