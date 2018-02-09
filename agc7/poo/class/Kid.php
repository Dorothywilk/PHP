<?php namespace Poo;

use Exception;

class Kid {

	/**
	 * Age du kid
	 *
	 * @var int
	 * @access public
	 */
	private   $age;
	protected $cheveux = 'noir';


	/** Protected => Sera utilisable par classe fille
	 *
	 * Retourne l'âge du Kid sous forme d'une chaîne
	 *
	 * @param void
	 *
	 * @return string
	 */
	protected function showAge()
	{
		return 'Son âge est : ' . $this->age;
	}


	/**
	 * Methode magique __get()
	 *
	 * Retourne la valeur de la propriété appelée
	 *
	 * @param string $property
	 *
	 * @return int $age
	 * @throws Exception
	 */
	public function __get( $property )
	{

		if ( 'age' === $property ) {
			return $this->age;
		}
		else {
			//throw new Exception( 'Propriété invalide !' );
			echo 'ATTENTION: Propriété <b>'.$property.' invalide</b> !';
		}

	}

	/**
	 * Methode magique __set()
	 *
	 * Fixe la valeur de la propriété appelée
	 *
	 * @param string $property
	 * @param mixed  $value
	 *
	 * @return void
	 * @throws Exception
	 */
	public function __set( $property, $value )
	{

		if ( 'age' === $property && is_numeric( $value ) ) {
			$this->age = (int) $value;
		}
		else {

			echo '<h2>Attention: age doit être une valeur numérique !</h2>
<p>On lui attribue 14<hr></p>';
			$this->age = 14;
			//throw new Exception( 'Propriété ou valeur invalide !' );
		}
	}

	public function __isset( $test )
	{
		echo 'La propriété ' . $test . ' est inaccessible<br>';
	}

	public function __unset( $test )
	{
		echo '<code>unset()</code> a été appelée sur une propriété (' . $test . ') inaccessible<br>';
	}

	public function __toString()
	{
		return 'Je suis un élément de la classe ' . __CLASS__ . '<br><br>';
	}

}
