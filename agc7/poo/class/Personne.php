<?php
namespace Poo;

class Personne {
	// Attributs
	public  $nom;
	public  $prenom;
	public  $dateDeNaissance;
	public  $taille;
	public  $sexe;
	private $m_nom;

	// Constantes
	const NOMBRE_DE_BRAS   = 4;
	const NOMBRE_DE_JAMBES = 2;
	const NOMBRE_DE_YEUX   = 2;
	const NOMBRE_DE_PIEDS  = 2;

	/**
	 * @return mixed
	 */
	public function getMNom()
	{

		return $this->m_nom;
	}

	/**
	 * @param mixed $m_nom
	 */
	public function setMNom( $m_nom )
	{


		$this->m_nom = $m_nom;
	}

	const NOMBRE_DE_MAINS = 2;

	// Méthodes
	public function __construct()
	{
	}

	public function boire()
	{
		echo 'La personne qui s\'appelle ' . $this->nom . ' boit<br/>';
	}

	public function manger()
	{
		echo 'La personne mange<br/>';
	}

	public function getNbr2Bras()
	{
		return self::NOMBRE_DE_BRAS;
	}
}
