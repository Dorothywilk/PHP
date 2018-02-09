<?php
namespace Poo;

class Voiture extends Vehicule {
	// Attributs
	private $_volumeCarburant;

	// Constructeur
	public function __construct( $marque )
	{
		// Appel du constructeur de la classe parente
		parent::__construct( $marque );
		$this->_volumeCarburant = 40;
	}

	// Démarre la voiture si le réservoir
	// n'est pas vide
	public function demarrer()
	{
		if ( $this->_controlerVolumeCarburant() ) {
			echo 'Le véhicule démarre<br>';

			return TRUE;
		}

		echo 'Le réservoir est vide...<hr>';

		return FALSE;
	}

	// Vérifie qu'il y'a du carburant dans le réservoir
	private function _controlerVolumeCarburant()
	{
		return ( $this->_volumeCarburant > 0 );
	}

	public function setVolumeCarburant( $dVolume )
	{
		$this->_volumeCarburant = $dVolume;
	}

	public function getVolumeCarburant()
	{
		return $this->_volumeCarburant;
	}
}
