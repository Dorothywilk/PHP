<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/jointures-et-sous-requetes-modification-de-donnees"
      target="_blank">Jointure et sous-requêtes</a></h1>

  <p class="lead">
    <i class="fa fa-edit"></i> Pour mises à jour (<code>UPDATE</code>) & insertions (<code>INSERT
      INTO</code>)
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
  $pdo = pdo( 'ocr2' );

  $sql = 'UPDATE animal SET commentaires = "" WHERE id=10';
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = 'SELECT id, nom, espece_id, sexe, commentaires
FROM animal ORDER BY id DESC limit 20, 3';
  $req( $sql, $pdo );


  $sql = 'UPDATE animal SET commentaires = "Très maligne" WHERE id=39';
  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = 'SELECT id, nom, espece_id, sexe, commentaires
FROM animal ORDER BY id DESC limit 20, 3';
  $req( $sql, $pdo );


  ?>
  <div class="jumbotron jumbotronRef">
    <h3 class="h3-responsive text-center">Les tables de référence</h3>
    <?php
    echo 'Animal (Les 4 premiers /' . $nbr( 'animal' ) . ')';
    $sql = 'select id, nom, espece_id, sexe
from animal limit 4';
    $req( $sql, $pdo );

    echo( 'Animal (Les 3 premiers /' . $nbr( 'animal' ) . ' qui ont un propriétaire)' );
    $sql = 'SELECT id, client_id, a.nom, espece_id, sexe, commentaires
FROM animal a
  LEFT OUTER JOIN adoption
  on adoption.animal_id = a.id
LIMIT 3';
    $req( $sql, $pdo );

    echo 'Client (Les 3 premiers id /' . $nbr( 'client' ) . ')';
    $sql = 'select client.id, nom as pseudo, email, ville
from client where id in (1,2,3)';
    $req( $sql, $pdo );
    ?>
  </div>
</div>

//TODOLI  https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/index-1 Finir index et jointures
