<?php

$iVar          = 1;
$sSerialized   = serialize( $iVar );
$iUnserialized = unserialize( $sSerialized );

echo '<pre>';
var_dump( $sSerialized, $iUnserialized );
echo '</pre>';

echo '<hr>';

class Dormeur {

	/**
	 * Age du nain Dormeur
	 *
	 * @var integer
	 * @access protected
	 */
	protected $_age;

	/**
	 * Le nom porte-t-il un bonnet ?
	 *
	 * @var boolean
	 * @access protected
	 */
	protected $_aSonBonnet;


	/**
	 * Sa couleur préférée
	 *
	 * @var string
	 * @access private
	 */
	private $_couleurPreferee;

	/**
	 * Ses hobbies
	 *
	 * @var array
	 * @access public
	 */
	public $_gouts;

	/**
	 * Constructeur de la classe
	 */
	public function __construct() {
		$this->_age             = 19;
		$this->_aSonBonnet      = TRUE;
		$this->_couleurPreferee = 'rouge';
		$this->_gouts           = [ 'musique', 'cinéma', 'curling' ];
	}

	/**
	 * Méthode magique __sleep() Appelée lors d’un serialize()
	 *
	 * @return Array la liste des paramètres à conserver
	 */
	public function __sleep() {
		echo 'Bon ben moi, je vais dormir.<br>';

		return [ '_age', '_aSonBonnet', '_couleurPreferee' ];
	}

	/**
	 * Méthode magique __wakeup() Appelée lors d’un unserialize()
	 *
	 * @return void
	 */
	public function __wakeup() {
		echo 'Bon ben moi, je vais me faire un café.';
	}
}

$aTableau      = [ 'Donald', new dormeur() ];
$sSerialized   = serialize( $aTableau );
$aUnserialized = unserialize( $sSerialized );

echo '<pre>';
var_dump( $sSerialized, $aUnserialized );
echo '</pre>';

echo '<hr>';

