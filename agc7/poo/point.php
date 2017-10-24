<?php

class Point {
	/**
	 * Abscisse du point
	 *
	 * @var integer
	 */
	protected $_x = 0;

	/**
	 * Ordonnée du point
	 *
	 * @var integer
	 */
	protected $_y = 0;


	/**
	 * Fixe les coordonnées du point
	 *
	 * @param integer $x Abscisse du point
	 * @param integer $y Ordonnée du point
	 *
	 * @return void
	 */
	public function setCoords( $x, $y ) {
		$this->_x = (int) $x;
		$this->_y = (int) $y;
	}
}

$p1 = new Point();
$p1->setCoords( 2, 3 );

echo '<pre>';
var_dump( $p1 );
echo '</pre>';


$p2 = clone $p1;
$p2->setCoords( 1, 2 );

echo '<pre>';
var_dump( $p1 );
echo '</pre><hr>';


class Sheep {
	/**
	 * Nom du mouton
	 *
	 * @var String
	 */
	protected $_name;

	/**
	 * Contructeur de la classe Sheep
	 *
	 * @param String $name nom du mouton
	 */
	public function __construct( $name ) {
		$this->_name = (string) $name;
	}

	/**
	 * Methode magique clone
	 *
	 * @return void
	 */
	public function __clone() {
		$this->_name = 'Copie de ' . $this->_name;
	}
}

$oSheep    = new Sheep( 'Dolly' );
$oNewSheep = clone $oSheep;
echo '<pre>';
var_dump( $oSheep );
var_dump( $oNewSheep );
echo '</pre><hr>';

class Singleton {
	/**
	 * Instance de la classe Singleton
	 *
	 * @var Singleton
	 */
	protected static $_instance = null;

	/**
	 * Constructeur de la classe
	 *
	 * @access protected
	 */
	protected function __construct() {
	}

	/**
	 * getInstance() : recuperation de l'instance de la classe
	 *
	 * @return Singleton
	 */
	public static function getInstance() {
		if ( null === self::$_instance ) {
			self::$_instance = new Singleton();
		}

		return self::$_instance;
	}

	/**
	 * Methode magique clone
	 *
	 * @return void
	 */
	public function __clone() {
		throw new Exception( 'Are you Trying to clone me ? I\'m a Singleton dude !' );
	}
}

try {
	$oSingleton = Singleton::getInstance();
	echo 'Tentative de clônage d\'un signgleton :<br>';
	clone $oSingleton;
}
catch ( Exception $e ) {
	echo 'Oops, exception : ', $e->getMessage();
}

echo '<hr>';<?php

class Point {
	/**
	 * Abscisse du point
	 *
	 * @var integer
	 */
	protected $_x = 0;

	/**
	 * Ordonnée du point
	 *
	 * @var integer
	 */
	protected $_y = 0;


	/**
	 * Fixe les coordonnées du point
	 *
	 * @param integer $x Abscisse du point
	 * @param integer $y Ordonnée du point
	 *
	 * @return void
	 */
	public function setCoords( $x, $y ) {
		$this->_x = (int) $x;
		$this->_y = (int) $y;
	}
}

$p1 = new Point();
$p1->setCoords( 2, 3 );

echo '<pre>';
var_dump( $p1 );
echo '</pre>';


$p2 = clone $p1;
$p2->setCoords( 1, 2 );

echo '<pre>';
var_dump( $p1 );
echo '</pre><hr>';


class Sheep {
	/**
	 * Nom du mouton
	 *
	 * @var String
	 */
	protected $_name;

	/**
	 * Contructeur de la classe Sheep
	 *
	 * @param String $name nom du mouton
	 */
	public function __construct( $name ) {
		$this->_name = (string) $name;
	}

	/**
	 * Methode magique clone
	 *
	 * @return void
	 */
	public function __clone() {
		$this->_name = 'Copie de ' . $this->_name;
	}
}

$oSheep    = new Sheep( 'Dolly' );
$oNewSheep = clone $oSheep;
echo '<pre>';
var_dump( $oSheep );
var_dump( $oNewSheep );
echo '</pre><hr>';

class Singleton {
	/**
	 * Instance de la classe Singleton
	 *
	 * @var Singleton
	 */
	protected static $_instance = null;

	/**
	 * Constructeur de la classe
	 *
	 * @access protected
	 */
	protected function __construct() {
	}

	/**
	 * getInstance() : recuperation de l'instance de la classe
	 *
	 * @return Singleton
	 */
	public static function getInstance() {
		if ( null === self::$_instance ) {
			self::$_instance = new Singleton();
		}

		return self::$_instance;
	}

	/**
	 * Methode magique clone
	 *
	 * @return void
	 */
	public function __clone() {
		throw new Exception( 'Are you Trying to clone me ? I\'m a Singleton dude !' );
	}
}

try {
	$oSingleton = Singleton::getInstance();
	echo 'Tentative de clônage d\'un signgleton :<br>';
	clone $oSingleton;
}
catch ( Exception $e ) {
	echo 'Oops, exception : ', $e->getMessage();
}

echo '<hr>';