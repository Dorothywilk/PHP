<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>Test Prism</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="agc7/assets/css/bootstrap.min.css">

	<link rel="stylesheet" href="agc7/assets/css/mdb.min.css">

	<link rel="stylesheet" href="../assets/css/prism.css" data-noprefix/>

	<!--<link rel="stylesheet" href="agc7/assets/css/combined.css">-->

</head>

<body>
<h3>Uuu</h3>
<pre data-src="https://raw.githubusercontent.com/c57fr/Do/devGc7/agc7/poo/uuu.php" class="line-numbers">
</pre>

<pre class="language-php line-numbers" data-value="1">
	<code>
		//unset( $_POST );
		//$_POST[ 'choix' ] = 2;

		if ( isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST ) &&
		isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST )
		) {
		<mark>$choix</mark>
		= substr( $_POST[ 'choix' ], 0, min( strlen( $_POST[ 'choix' ] ), 2 ) );
		}
		else {
		$choix = 0;
		}

	</code>
</pre>


<pre>
	<code class="language-css">
		body {
		color:red;
		}
	</code>
</pre>


<?php

echo str_repeat( '<br>&nbsp;', 5 );
$maVal = 777;
?>
</div>
<footer>
	<a href="https://github.com/c57fr/Do" target="_blank">Vous <u>devez</u> contribuer <i class="fa fa-github"></i> !</a>
	| &copy;2017-2018 - GC7
</footer>
<script src="./agc7/assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="agc7/assets/js/popper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="agc7/assets/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="agc7/assets/js/mdb.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/prism.js" type="text/javascript" charset="utf-8"></script>
<?php
//include './poojs.php';
?>
<!--<script src="../js/poo.js" type="text/javascript"></script>-->
</body>

</html>
