<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>Test Prism</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">

	<!--<link rel="stylesheet" href="../assets/css/mdb.min.css">-->

	<link rel="stylesheet" href="../assets/css/prism.css" data-noprefix/>

	<link rel="stylesheet" href="../assets/css/combined.css">

</head>

<body>
<div class="container-fluid">
	<div class="maingc7 mt20">

		<?php

		function getPhpSource( $f )
		{
			$code = htmlentities( file_get_contents( $f ) );
			return '<pre class="language-php line-numbers"><code>'.$code.'</code></pre>';
		}


		//echo 'The code: '.getPhpSource('uuu.php');

		?>

		<h3>Avec jQ</h3>
		<!--<pre class="language-php line-numbers" id="phpjQ"></pre>-->
		<div id="phpjQ"></div>

		<!--<span id="phpjQ"></span>-->

		<h3>uuu.php en PHP</h3>
		<pre class="language-php line-numbers"><code>
				<?php
				echo htmlentities( file_get_contents( 'uuu.php' ) );
				?>
			</code>
		</pre>
	</div>
</div>

<div class="maingc7 mainPoo" id="poo">


	<div class="container-fluid">

		<h2>Depuis Localhost</h2>
		<pre data-src="/agc7/poo/uuu.php" class="line-numbers">
		</pre>

		<h2>Depuis Github</h2>
		<pre data-src="https://raw.githubusercontent.com/c57fr/Do/master/agc7/poo/uuu.php" class="line-numbers">
		</pre>

		<h3>Et son résultat</h3>
		<pre data-src="uuu.php" class="line-numbers"></pre>

<pre class="language-php line-numbers" data-value="1">
	<code>
		//unset( $_POST );
		//$_POST[ 'choix' ] = 2;

		if ( isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST ) &&
		isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST )
		) {
		$choix = substr( $_POST[ 'choix' ], 0, min( strlen( $_POST[ 'choix' ] ), 2 ) );
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
</div>
<footer>
	<a href="https://github.com/c57fr/Do" target="_blank">Vous <u>devez</u> contribuer <i class="fa fa-github"></i> !</a>
	| &copy;2017-2018 - GC7
</footer>
</div>
<script src="../assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/popper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

<script src="../assets/js/mdb.min.js" type="text/javascript" charset="utf-8"></script>


<script type="text/javascript">
	$(document).ready(function () {
		if (window.File && window.FileReader && window.FileList && window.Blob) {
			console.log('Great success! All the File APIs are supported.');
		} else {
			alert('The File APIs are not fully supported in this browser.');
		};
		var c =$('#phpjQ');
		//$('#phpjQ').load('uuu.php');

		//var sH = "<pre class='language-php line-numbers'><code>"+< ?php //echo htmlentities( file_get_contents( 'uuu.php' ) ); ?>//+"</code></pre>;";

		var sH = <?php $var=json_encode(htmlentities(getPhpSource( 'uuu.php' ))); echo $var; ?>;

		//var sH = <?php //$var = json_encode( file_get_contents( 'uuu.php' ) ); echo $var; ?>//;

		//var sH = <?php //$var = json_encode( file_get_contents( 'uuu.php' ) ); echo $var; ?>//;
		//console.log(sH);


		//var idCible = $('#phpjQ');
		//
		////<pre class="language-php line-numbers" id="phpjQ"><code></code></pre>
		//
		//idCible.html('<pre class="language-php line-numbers" id="phpjQ"><code>').text();
		//idCible.append(sH).text();
		//idCible.append('</code></pre>').text();

	});
</script>
<script src="../assets/js/prism.js" type="text/javascript" charset="utf-8"></script>
<?php
//include './poojs.php';
?>
<!--<script src="../js/poo.js" type="text/javascript"></script>-->
</body>

</html>
