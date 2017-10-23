<?php

$q = 'select * from transports';
aff( $q );

// Ok
$rep = $db->query( $q )->fetchAll( PDO::FETCH_OBJ );


affR( $rep );

aff( $rep );

function affR()
{
	$args = func_get_args();
	if (count($args)>1){
		echo 'oui';
	}
	//aff(var_export($args));

	echo '<table border="1">';
	foreach ( $args[0] as $row ) {
		echo '<tr>';

		echo
			'<td>&nbsp;&nbsp;' . $row->id . '&nbsp;</td>
		<td>&nbsp;' . $row->nom . '&nbsp;</td>
		<td>&nbsp;' . $row->pere . '&nbsp;</td>';

		echo '</tr>';
	}
	echo '</table>';
	//echo '</pre>';
}
