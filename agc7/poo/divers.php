<h2>Classe anonyme</h2>
<p><code> new class{} </code></p>
<?php

$classAno = new class {
	public $bjr    = 'Bonjour ';
	public $userID = 135;

	const USER = 'utilisateur ';

	public function msg()
	{
		return ', vous êtes l\'';
	}

	public function getNom( $prenom )
	{
		return $prenom;
	}
};

echo '<pre>';
var_dump( $classAno );
echo '</pre>';

echo $classAno->bjr . $classAno->getNom( 'Pierre' ) . $classAno->msg()
     . $classAno::USER . $classAno->userID;

exit();
?>
<hr>
<h2>Simple closure</h2>
<p><code>getCarre(n)</code></p>
<?php
$getCarre = function ( $n ) {
	return 'Le carré de ' . $n . ' est ' . ( $n * $n ) . '<hr>';
};

echo $getCarre( 5 );
?>
<h2>Callback</h2>
<p><code>array_map()</code></p>
<?php

$carre = function ( $n ) {
	return pow( $n, 2 );
};

$arr    = range( 1, 5 );
$carres = array_map( $carre, $arr );

echo implode( ' ', $arr ) . ' => ' . implode( ' ', $carres ) . '<br><br>';

echo 'Une closure est un objet:<br>Type de $carre: '
     . gettype( $carre ) . ' de type ' . get_class( $carre ) . '<hr>';
?>
