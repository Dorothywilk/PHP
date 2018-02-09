<?php namespace Poo;

class Vehicule {
	// Attributs
	protected $_marque;
	protected $_estRepare;
	protected $dateEnregistrement;

	// Nbre de véhicules enregistrés
	protected static $parc;

	const NRJ = 'Essence';

	// Méthodes
	public function __construct( $marque )
	{
		$this->_marque            = $marque;
		$this->_estRepare         = FALSE;
		$this->dateEnregistrement = date( 'd/m/y à H:i:s' );
		self::$parc ++;
	}

	// Donne la date d'enregistrement (Propriété protected)
	public function getDateEnregistrement()
	{
		return $this->dateEnregistrement;
	}

	// Met le véhicule en maintenance
	public function reparer()
	{
		$this->_estRepare = TRUE;
		echo 'Le véhicule est en réparation<br>';
	}

	public function getMarque()
	{
		return $this->_marque;
	}

	public static function getParc()
	{
		return self::$parc;
	}
}
