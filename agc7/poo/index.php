<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>P.O.O.</title>
	<link rel="stylesheet"
	      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/mdb.min.css">
	<link rel="stylesheet" href="../assets/css/prism.css" data-noprefix />
	<link rel="stylesheet" href="../assets/css/combined.css">
</head>

<body>
<div class="navLi mtnav">
	<a href="/">Do</a> |
	<a href="/agc7">AC7</a> | P.O.O.
</div>
<hr>
<div class="maingc7 mainPoo" id="poo">

	<div class="container-fluid">
		<br>

		<div id="dejaChoix">

			<?php
			//unset( $_POST );
			//$_POST[ 'choix' ] = 2;

			if ( isset( $_POST ) && array_key_exists( 'choix', $_POST ) ) {
				$choix = substr( $_POST[ 'choix' ], 0, min( strlen( $_POST[ 'choix' ] ), 2 ) );
			}
			else {
				$choix = 0;
			}

			echo '$_POST[\'choix\'] : <b>' . $choix . '</b>';

			?>
		</div>

		<div class="row">

			<div class="col">

				<!--<form id="choixForm" method="post" action="--><?php //echo $_SERVER['PHP_SELF']; ?><!--">-->
				<form id="choixForm" method="post" action="">

					<select name='choix' onchange='this.form.submit()' class="mdb-select" id="choix">
						<!--<option id="noChoix">Re-init Form</option>-->
					</select>
					<label for="choix">Choix de la fonction POO</label>

				</form>

				<!--<br><br><br><br>-->

				<div id="test"></div>

			</div>


			<div class="col">
				<div id="description">
					<?php
					//if ( count( $_POST ) ) {
					//    echo $_POST[ 'choix' ];
					//}
					//else {
					//    $_POST[ 'choix' ] = [ 'personne' ];
					//    include 'personne.php';
					//}
					//var_dump( $_POST );
					?>

				</div>
			</div>

		</div>
		<hr class="mt20">
		<div class="row md-12">
			<!--<pre class="line-numbers language-php" data-src="uuu.php" data-start="1" style="white-space:pre-wrap">-->
			<pre data-src="agc7/poo/uuu.php">
			</pre>
				<pre><code class="language-css">p { color: red }</code></pre>

		</div>
		<hr class="mt20">
		<div class="row md-12">
			<div id="content" class="mt10">

			</div>
			<?php
			//if ( $_POST[ 'choix' ][ 0 ] <> 'noChoix' ) {
			//    include $_POST[ 'choix' ][ 0 ] . '.php';
			//    //var_dump( $_POST[ 'choix' ] );
			//}
			//else {
			//}
			////var_dump( $_POST );
			?>
		</div>
	</div>
	<?php

	// Simple classe
	//include 'personne.php';

	// Classe Mère & classe fille
	//include 'vehicule.php';

	// Classe Mère & classe fille /|\ : Bug exprès en fin de fichier
	//include 'kid.php';

	// Méthodes magiques __call()
	// include 'manchot.php';

	// Méthodes magiques __clone()
	//include 'point.php';

	// Méthodes magiques __sleep() & __wakeup()
	// include 'dormeur.php';

	// Classes abstraites et finales
	//  include 'humains.php';

	// Iterator (Interface)
	// include 'iterator.php';

	//** 777777777777777777777 **/
	// OneTrait (Trait)
	// include '../class/OneTrait.php';

	echo str_repeat( '<br>&nbsp;', 5 );
	$maVal = 777;
	?>
</div>
<footer>
	<a href="https://github.com/c57fr/Do" target="_blank">Vous <u>devez</u> contribuer <i class="fa fa-github"></i> !</a>
	| &copy;2017-2018 - GC7
</footer>
<script src="../assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/popper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/mdb.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/prism.js" type="text/javascript" charset="utf-8"></script>
<?php
include './poojs.php';
?>
<!--<script src="../js/poo.js" type="text/javascript"></script>-->
</body>

</html>
