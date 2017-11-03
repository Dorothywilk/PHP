<?php
namespace GC7;
?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Tests</h3>

</div>
<div class="maingc7">
  <?php

  // Commentaires pour un article (Ici 2)
  /*
  $sql = "SELECT Commentaire.contenu,
      DATE_FORMAT(Commentaire.date_commentaire, '%d/%m/%Y'),
      Utilisateur.pseudo
FROM Commentaire
  LEFT JOIN Utilisateur
  ON Commentaire.auteur_id = Utilisateur.id
WHERE Commentaire.article_id = 2
ORDER BY Commentaire.date_commentaire;";
  */
  //    $req( $sql );
?>
  <p>Categorie - id de la catégorie = 3</p>
<?php


try {
  $id = 1;

  // On se connecte
//  $bdd = new PDO('mysql:host=localhost;dbname=elevage', 'sdz', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ));
  $bdd = pdogc72();

  // On prépare la requête
  $requete = $bdd->prepare( "SEoLECT id, nom FROM animal WHERE id = :id" );

  // On lie la variable $id définie au-dessus au paramètre :id de la requête préparée
  $requete->bindvalue( ':id', $id, \PDO::PARAM_STR );

  //On exécute la requête
  $requete->execute();

  // On récupère le résultat
  if ( $requete->fetch() ) {
    echo 'L\'animal d\'id <strong>' . $id . '</strong> existe !';
  }
} catch ( Exception $e ) {
  echo( '<h3 class="red-text"><br>&nbsp;' . $e->getMessage() . '<br>' . $e->getFile() . ': <strong>
' . $e->getLine() . '</strong></h3>' );
}

echo str_repeat( '<br>', 30 );
/*
  ?>
  <p>Auteur - id de l’auteur = 2</p>
  <?php
  $sql = "SET lc_time_names = 'fr_FR'";
  $pdo = $req( $sql );

  $sql="SELECT DATE_FORMAT(date_publication, '%d %M \'%y') date, pseudo, titre, resume
from article

  left join utilisateur
  on utilisateur.id = article.Auteur_id

where utilisateur.id = 2

order by article.date_publication desc
";
  $pdo = $req( $sql, $pdo );
*/


  //
  //  $sql = "SELECT *
  //
  //from utilisateur";
  //  $req( $sql );
  //
  //  $sql = "SELECT *
  //
  //from article";
  //  $req( $sql );

  /*
  ?>
  <p>Accueil</p>
  <?php
  $sql = "SELECT DATE_FORMAT(date_publication, '%d/%m/%Y'),
       utilisateur.pseudo,
       titre, Resume,
       (select count(*) from commentaire
        where commentaire.article_id=article.id)
from article
  left join utilisateur
  on utilisateur.id = article.Auteur_id
order by date_publication desc";
  $req( $sql );
*/
  ?>
</div>
