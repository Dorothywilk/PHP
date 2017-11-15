<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/gestion-des-utilisateurs-4"
      target="_blank">Administration</a></h1>

  <p class="lead">Utilisateurs</p>

</div>


<div class="maingc7">


  <?php

  $pdo = pdo( 'ocr2' );

  $sql = "Select 1";
  //    affLign( $sql );
  //    $pdo->query( $sql );
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>
