<?php namespace Gc7;

interface Renseignement {

	// Portée forcément public dans une interface
	public function setAdresse( $adresse, $codePostal, $ville );

	public function setSource( $source );
}
