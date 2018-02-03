<h1>__sleep() et __wakeup()</h1>
<h2>Sérialisation et désérialisation d'un objet</h2>
<p>Permet de filtrer les propriétés</p>
<hr>
<?php

$iVar          = 1;
$sSerialized   = serialize( $iVar );
$iUnserialized = unserialize( $sSerialized );

var_dump( $sSerialized, $iUnserialized );

echo '<hr>';

class Dormeur {

	/**
	 * Age du nain Dormeur
	 *
	 * @var integer
	 * @access protected
	 */
	public $_age;

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
	public function __construct()
	{
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
	public function __sleep()
	{
		echo 'Bon ben moi, je vais dormir.<br>';

		return [ '_age', '_aSonBonnet', '_couleurPreferee' ];
	}

	/**
	 * Méthode magique __wakeup() Appelée lors d’un unserialize()
	 *
	 * @return void
	 */
	public function __wakeup()
	{
		echo 'Bon ben moi, je vais me faire un café.';
		$this->_age = 25;
	}
}

$aTableau      = [ 'Donald', new dormeur() ];
$sSerialized   = serialize( $aTableau );
$aUnserialized = unserialize( $sSerialized );

var_dump( $sSerialized, $aUnserialized );

echo '<hr>';
