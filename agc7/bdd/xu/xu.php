<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron">
	<h1 class="meaDo pb10"><a href="#" target="_blank">Travail réel</a></h1>

	<p class="lead">But: Last ID : 25 050</p>
</div>

<div class="maingc7">
	<?php
	$pdo = pdo( 'aaxu' );

	//  affLign( $sql );
	//  $pdo->query( $sql );

	?>
	<h3>Nombre de membres</h3>
	<?php

	$sql = "SELECT count(*) FROM aaxu.xu";
	$req( $sql, $pdo );

	?>

	<h3>Dossier XU pour suivre travail réel</h3>
	<!--<h3>Last membres (À ajouter)</h3>-->
	<?php
	//
	//$sql = "SELECT @@GLOBAL.autocommit, @@SESSION.autocommit";
	//$req( $sql, $pdo );

	echo str_repeat( '<br>', 25 ); // 28
	?>
</div>
