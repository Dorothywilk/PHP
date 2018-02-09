<h2>Callback</h2>
<p><code>array_map()</code></p>
<?php

$carre = function ( $n ) {
	return pow( $n, 2 );
};

$arr    = range( 1, 5 );
$carres = array_map( $carre, $arr );

echo implode( ' ', $arr ) . ' => ' . implode( ' ', $carres ) . '<hr>';

echo 'Une closure est un objet:<br>Type de $carre: '
     . gettype( $carre ) . ' de type ' . get_class( $carre );

