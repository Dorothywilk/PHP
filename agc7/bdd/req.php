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
	aff(array($args[0][0])[0]);

	//echo '<tr>';
	//aff ( (array) array_keys($args[0]) );
	//echo' </tr>';
	//echo '<tr>';

	echo '<table border="1" class="table table-bordered table-striped table-hover table-sm">';
	foreach ( $args[0] as $row ) {


		echo
			'<td>' . $row->id . '</td>
		<td>&nbsp;' . $row->nom . '&nbsp;</td>
		<td>&nbsp;' . $row->pere . '&nbsp;</td>';

		echo '</tr>';
	}
	echo '</table>';
	//echo '</pre>';
}
