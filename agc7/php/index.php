<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>PHP</title>
	<link rel="stylesheet"
	      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/mdb.min.css">
	<link rel="stylesheet" href="../assets/css/prism.css" data-noprefix/>
	<link rel="stylesheet" href="../assets/css/combined.css">
</head>

<body>
<div class="navLi mtnav">
	<a href="/">Do</a> |
	<a href="/agc7/">AC7</a> | PHP avancé
</div>

<hr>

<div class="maingc7 mainPoo" id="poo">

	<div class="container-fluid">
		<br>

		<div id="dejaChoix">
			<?php
			// unset( $_POST );
			//$_POST[ 'choix' ] = 2;

			if ( isset( $_POST ) && array_key_exists( 'choix', $_POST ) ) {
				$choix = (int) substr( $_POST[ 'choix' ], 0, min( strlen( $_POST[ 'choix' ] ), 2 ) );
			}
			else {
				$choix = 0;
			}
			echo '$_POST[\'choix\'] : <b>' . $choix . '</b>';

			?>
		</div>

		<div class="row">
			<?php
			function getPhpSource( $f )
			{
				$code = htmlentities( file_get_contents( $f, FALSE, null, 0 ) );

				return $code;
			}

			$sujets = json_decode( file_get_contents( "sujets.json" ) );
			?>
		</div>
		<div class="row">

			<div class="col">

				<form id="choixForm" method="post" action="">

					<select name='choix' onchange='this.form.submit()' class="mdb-select" id="choix">
					</select>
					<label for="choix">Choix de la fonction POO</label>

				</form>

				<div id="test"></div>

			</div>

			<div class="col">
				<div id="description">Choisir un sujet ci-contre...</div>
			</div>
		</div>
		<hr class="mt20">
		<div id="scripts">
			<?php
			$fichiers = $sujets->sujets[ $choix ]->fichier;
			if ( ! is_array( $fichiers ) ) {
				$fichiers = [ $fichiers ];
			}

			$content = $fichiers[ 0 ];

			$nbF = count( $fichiers );
			if ( $nbF - 1 ) {
				$plurF = 's';
				$terme = 'fichiers';
			}
			else {
				$plurF = '';
				$nbF   = '';
				$terme = 'code';
			}
			?>
			<button class="btn btn-warning"><span id="etat">Découvrir</span> le<?= $plurF . ' ' . $nbF . ' ' . $terme ?>
				utilisé<?= $plurF ?></button>
			<div class="row md-12" id="files">
				<?php
				//var_dump($sujets);
				foreach ( $fichiers as $f ) {
					echo '<b>' . $f . '</b>.php';
					echo '<pre class="language-php line-numbers"><code>' . getPhpSource( $f . '.php' ) . '</code></pre>';
				}
				?>
			</div>
		</div>
		<hr class="mt20">
		<div class="row md-12 lead">
			<div id="content">

			</div>
		</div>
	</div>
	<?php
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
include './phpjs.php';
?>
<!--<script src="../js/poo.js" type="text/javascript"></script>-->
</body>

</html>
