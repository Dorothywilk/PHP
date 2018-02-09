<?php namespace Poo;

class SimpleIterateur implements Iterator {
	protected $n;
	const MAX = 5;

	public function rewind()
	{
		$this->n = 0;
	}

	public function current()
	{
		return $this->n;
	}

	public function next()
	{
		$this->n ++;
	}

	public function key()
	{

		return $this->n + 1;
	}

	public function valid()
	{
		return $this->n <= self::MAX;
	}
}

echo '<h3><b>Classe SimpleIterateur</b></h3>';

$c = new SimpleIterateur();

echo '<pre>';
var_dump( $c );
echo '</pre>';

foreach ( $c as $key => $val ) {
	echo 'Increment ' . $key . ' : ' . $val . '<br/>';
}
echo '<hr>';

///////////////////////////////////////// Exemple 2
class Iterateur implements Iterator {

	// On déclare une variable tableau vide
	private $var = [ ];

	public function __construct( $arr )
	{
		if ( is_array( $arr ) ) {
			$this->var = $arr;
		}
	}

	// rewind() replace l'itérateur sur le 1er élément
	public function rewind()
	{
		echo 'Retour au départ<br>';
		reset( $this->var );
	}

	public function current()
	{
		// current() retourne l'élément courant
		$var = current( $this->var );
		echo 'Élément actuel: ' . $var . '<br>';

		return $var;
	}

	// next() se déplace sur l'élément suivant
	public function next()
	{
		$var = next( $this->var );
		echo 'Élément suivant: ' . $var . '<br>';

		return $var;
	}

	// key() retourne la clef de l'élément courant
	public function key()
	{
		$var = key( $this->var );
		echo 'Clef: ' . $var . '<br>';

		return $var;
	}

	// valid() vérifie si la position courante est valide
	public function valid()
	{
		$key = key( $this->var );
		$var = ( $key !== null && $key !== FALSE );
		echo 'Position valide: ' . $var . '<br>';

		return $var;
	}

}

$tableau   = range( 1, 4 );
$iterateur = new Iterateur( $tableau );

echo '<h2><b>Classe Iterateur</b></h2>';

foreach ( $iterateur as $k => $v ) {
	echo '<b>' . $k . ': ' . $v . '</b><br>';
}

