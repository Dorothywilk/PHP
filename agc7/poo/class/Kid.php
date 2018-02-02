<?php
namespace Gc7;

class Kid {

	/**
	 * Age du kid
	 *
	 * @var int
	 * @access public
	 */
	private $age;

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
			throw new Exception( 'Propriété invalide !' );
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
			throw new Exception( 'Propriété ou valeur invalide !' );
		}
	}
}
