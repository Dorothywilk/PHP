<?php

class humain { // Espèce humaine - H ou F

	public $sexe, $genre; // M ou F

	function __construct ($user) {
		$this->estHumain();
	}

	function estHumain() {

		$genreMasculin = [ 'homme', 'garçon', 'garçonnet', 'gay'];
		$genreFeminin = [ 'femme', 'fille', 'fillette', 'demoiselle', 'lesbienne'];

		$this->sexe = (in_array(strtolower($this->genre), $genreMasculin) ) ? 'M':'F';

		$genres = array_merge($genreMasculin, $genreFeminin);

		if ( in_array(strtolower($this->genre), $genres) ) {
			$this->estHumain = true;
		}


		echo '<pre>';
				var_dump($this->prenom);
				var_dump($this->estHumain);
		echo '</pre>';

	}
	
}
