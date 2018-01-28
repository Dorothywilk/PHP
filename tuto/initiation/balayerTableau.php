<?php


		$planetes = [ 'terre', 'lune', 'mars', 'jupiter' ];

		echo '1<sup>ère</sup> façon de balayer tout le tableau:<br>';

		for ( $i = 0; $i < 3; $i ++ ) {
			echo $planetes[ $i ] . ' ';
		}

		
		echo '<hr>';

		echo '2<sup>ème</sup> façon de balayer tout le tableau:<br>';

		foreach ( $planetes as $planete ) {
			echo $planete . ' ';
		}


		$planetes = [ 'terre', 'lune', 'mars', 'jupiter' ];

		echo '1<sup>ère</sup> façon de balayer tout le tableau:<br>';

		for ( $i = 0; $i < 3; $i ++ ) {
			echo $planetes[ $i ] . ' ';
		}

		
		echo '<hr>';

		echo '2<sup>ème</sup> façon de balayer tout le tableau:<br>';

		foreach ( $planetes as $planete ) {
			echo $planete . ' ';
		}
