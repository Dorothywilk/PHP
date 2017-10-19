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
echo '</pre>';