<?php namespace Php;


essaiDivision( 5, 2 );

essaiDivision( 7, 0 );


function division( $x, $y )
{
	if ( ! $y ) {
		throw new \Exception( 'Division par zéro impossible !<br>' );
	}

	return 'Résultat : <b>' . $x . ' / ' . $y . ' = ' . $x / $y . '</b><br>';
}

function essaiDivision( $x, $y )
{

	try {
		echo division( $x, $y );
	} catch ( \Exception $e ) {
		$params = $e->getTrace();
		echo 'Exception capturée: <b>' . $params[ 0 ][ 'args' ][ 0 ] . ' / ' . $params[ 0 ][ 'args' ][ 1 ] . ' : ' . $e->getMessage()
		     . '</b><br>File: ' . $e->getFile()
		     . ' -
Ligne' . $e->getLine() . '<br><br>'
		     . '<code>.$e->getTraceAsString()</code> : ' . $e->getTraceAsString() . '<br><br>'
		     . '<code>.$e->__toString()</code> : ' . $e->__toString() . '<br><br>';
	} finally {
		echo '(Bloc finally) Code toujours exécuté (Si erreur "<i>catchée</i>" ou pas)<br>avant le retour dans le programme principal...<br>';
	}

	echo 'Suite du code<hr>';
}
