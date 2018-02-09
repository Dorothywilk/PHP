<?php
namespace Poo;

class Camion extends Vehicule {
	// Attributs
	private $_volumeCarburant;

	const NRJ = 'Gasoil';

	// Constructeur
	public function __construct( $marque )
	{
		// Appel du constructeur de la classe parente
		// Avec l'opérateur de résolution de portée ::
		// pour ne pas avoir à re-écrire les autres fonctions

		// On en profite pour surcharger la valeur stockée
		// (Le paramètre est ainsi nommé qd il est au niveau du constructeur)
		// car on veut les marques de camions tout en majuscule
		parent::__construct( strtoupper( $marque ) );

		// Pour un camion, seule la date (sans l'heure) nous intéresse
		// On surcharge donc la propriété dateEnregistrement
		$this->dateEnregistrement = date( 'd/m/y.' );
		$this->_volumeCarburant   = 200;
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
