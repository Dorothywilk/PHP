<?php

class Manchot {
	/**
	 * Methode magique __call()
	 *
	 * @param string $method    Nom de la méthode à appeler
	 * @param array  $arguments Tableau de paramètres
	 *
	 * @return void
	 * @access private
	 */
	public function __call( $method, $arguments )
	{
		echo 'Vous avez appelé la méthode ', $method, ' avec les arguments : ', implode( ', ', $arguments );
	}
}

$george = new Manchot();
$george->voler( 'Afrique', 123, 'abc' );

echo '<hr>';


class SearchEngine {
	/**
	 * Effectue une recherche dans la base de données à
	 * partir des critères fournis en argument
	 *
	 * @param array $conditions Tableau de critères de recherche
	 *
	 * @return array $return Tableau des résultats
	 * @see SPDO
	 */
	public function search( $conditions = [ ] )
	{
		$query = 'SELECT id FROM table';

		if ( count( $conditions ) > 0 ) {
			$query .= ' WHERE ' . implode( ' AND ', $conditions );
		}

		// Exécution de la requête SQL avec une classe PDO
		// $result = SPDO::getInstance()->query($query);
		// $return = $result->fetchAll(PDO::FETCH_ASSOC);

		$return = $query;

		return $return;
	}

	/**
	 * Méthode magique __call() permettant d'appeller une méthode virtuelle
	 * du type searchByName(), searchByAge() ou searchByNameAndAge()...
	 *
	 * @param string $method Nom de la méthode virtuelle appelée
	 * @param array  $args   Tableau des critères de recherche
	 *
	 * @return array|null $return Tableau des résultats ou NULL
	 * @see SearchEngine::search()
	 */
	public function __call( $method, $args )
	{

		if ( preg_match( '#^searchBy#i', $method ) ) {
			$searchConditions = str_replace( 'searchBy', '', $method );
			$searchCriterias  = explode( 'And', $searchConditions );
			$conditions       = [ ];
			$nbCriterias      = sizeof( $searchCriterias );

			for ( $i = 0; $i < $nbCriterias; $i ++ ) {
				$conditions[] = strtolower( $searchCriterias[ $i ] ) . '="' . $args[ $i ] . '"';
			}

			//var_dump( $conditions );

			return $this->search( $conditions );
		}

		return null;
	}
}

$mySearchEngine = new SearchEngine();
echo '$mySearchEngine->searchByNameAndDate( \'Lionel\', \'23/03/1965\' ) :<br><br>' . $mySearchEngine->searchByNameAndDate( 'Lionel', '23 / 03 / 1965' );
