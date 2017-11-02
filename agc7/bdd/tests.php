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
  <p>Auteur - id de l’auteur = 2</p>
  <?php
  $sql = "SELECT DATE_FORMAT(date_publication, '%d/%m/%Y'),
       utilisateur.pseudo,
       titre, Resume,
       (select count(*) from commentaire where commentaire.article_id=article.id)
from article
  left join utilisateur
  on utilisateur.id = article.Auteur_id
order by date_publication desc";
  $req( $sql );

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


  ?>
</div>
