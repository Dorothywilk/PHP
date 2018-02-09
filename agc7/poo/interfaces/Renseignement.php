<?php namespace Gc7;

interface Renseignement {

	public function setAdresse( $adresse, $codePostal, $ville );

	public function setSource( $source );
}
