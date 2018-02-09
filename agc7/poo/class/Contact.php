<?php namespace Poo;

include 'interfaces/Renseignement.php';

// À noter qu'il peut y avoir plusieurs interfaces implémentées
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

	public function __destruct()
	{
		// En cas réel, code à exécuter juste avant
		// la fin de l'utilisation d'un objet
		// Exemple: Enregistrement en BdD, fermer la connection, etc...
		echo 'L\'objet est en train d\'être détruit...';
	}

}
