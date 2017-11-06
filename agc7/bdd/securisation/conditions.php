<?php
namespace GC7;
?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Conditions</h3>

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
<h3>Rappel</h3>
<?php

$sql = "CALL aujourdhui_demain();";
$pdo = $req( $sql);

  ?>
  <h3>Simple <code>IF(cond, 1, 0)</code></h3>
  <?php

  $sql = "SELECT IF(1=1,'oui','non') as '1 = 1 ?'";
  $pdo = $req( $sql);
  ?>

  Voir <a
    href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/structurer-ses-instructions"
  <?php

  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


