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
<h2>Classe anonyme</h2>
<p><code> new class{} </code></p>
<?php

$age   = 27;
$genre = 'M';

$classAno = presente( $age, $genre );

function presente( $age, $genre )
{
	return new class( $age, $genre) {
	public
	$bjr = 'Bonjour ';
	public
	$userID = 135;
	public
	$age;
	public
	$genre;

	const USER = 'utilisateur ';

	/**
	 *  constructor.
	 *
	 * @param int $age
	 * @param str $genre
	 */
	public
	function __construct( $age, $genre )
	{
		$this->age   = $age;
		$this->genre = $genre;
	}


	public
	function msg()
	{
		return ', vous êtes l\'';
	}

	public
	function getNom( $prenom )
	{
		return $prenom;
	}
};
}

echo '<pre>';
var_dump( $classAno );
echo '</pre>';
echo $classAno->bjr . $classAno->getNom( 'Pierre' ) . $classAno->msg()
     . $classAno::USER . $classAno->userID . '<br>';
echo 'Age: ' . $classAno->age . '<br>Genre: ' . $classAno->genre;


?>
<hr>
