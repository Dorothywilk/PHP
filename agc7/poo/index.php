<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>P.O.O.</title>
	<link rel="stylesheet"
	      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/mdb.min.css">
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
			$_POST[ 'choix' ] =789;
			echo $_POST[ 'choix' ] . "\n";
			?>
		</div>

		<div class="row">

			<div class="col">

				<form action="index.php" method="post">


					<select name='choix' onchange='this.form.submit()' class="mdb-select" id="choix">
						<!--<option disabled id="sujet">Sujet</option>-->
					</select>
					<label for="choix">Choix de la fonction POO</label>


				</form>

				<br><br><br><br>

				<hr>

				<div id="test"></div>

			</div>


			<div class="col">
				<p id="description"></p>
				<?php
				//var_dump( $_POST );
				if ( count( $_POST ) ) {
					echo $_POST[ 'choix' ];
				}
				?>

				<hr>

			</div>

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

	// OneTrait (Trait)
	// include '../class/OneTrait.php';

	echo str_repeat( '<br>&nbsp;', 5 );

	?>
</div>

<script src="../assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/popper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/mdb.min.js" type="text/javascript" charset="utf-8"></script>
<?php
include './poojs.php';
?>
<!--<script src="../js/poo.js" type="text/javascript"></script>-->
</body>

</html>
