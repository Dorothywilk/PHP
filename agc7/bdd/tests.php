<?php
namespace GC7;
?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Tests</h3>

</div>
<div class="maingc7">
  <?php

  // Commentaires pour un article (Ici 2)
  $sql = "SELECT Commentaire.contenu,
      DATE_FORMAT(Commentaire.date_commentaire, '%d/%m/%Y'),
      Utilisateur.pseudo
FROM Commentaire
  LEFT JOIN Utilisateur
  ON Commentaire.auteur_id = Utilisateur.id
WHERE Commentaire.article_id = 2
ORDER BY Commentaire.date_commentaire;";
  $req( $sql );


  ?>
  <p>Auteur - id de l’auteur = 2</p>
  <?php
  $sql = "SELECT 1";
  $req( $sql );


  ?>
</div>
