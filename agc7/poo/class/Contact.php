<?php namespace Gc7;

class Contact implements Renseignement {

	protected $adresse;
	protected $codePostal;
	protected $ville;
	protected $source;

	public function setAdresse( $adresse, $codePostal, $ville )
	{
		$this->adresse    = $adresse;
		$this->codePostal = $codePostal;
		$this->ville      = $ville;
	}

	public function getAdresse()
	{
		return $this->adresse . '<br>' . $this->codePostal . '<br>' . $this->ville;
	}

	public function setSource( $source )
	{
		$this->source = $source;
	}

	public function getSource()
	{
		return $this->source;
	}


}
