<?php

	// var_dump($_POST);

?>


	<form action="./tuto/initiation/tableMultiplication.php" method="POST">

		<input type="text" name="valeur">

		<input type="submit" value='Go !'>

	</form>



	<?php


if (isset($_POST['valeur']) ) {

	if ( $_POST['valeur']<13 && $_POST['valeur']>0 ) {

		echo getTableDeMultiplicationDu($_POST['valeur']) . '<hr>';

	}
	
	else die('<h1>Vous devez saisir une valeur de 1 à 12</h1>');

}




for ($i=1; $i < 11; $i++) { 
  
  //echo getTableDeMultiplicationDu($i) . '<hr>';

}




function getTableDeMultiplicationDu($operande) {
  
  $table = '<h3>Table du '.$operande.'</h3>';
  
  for ($i=1; $i < 13; $i++) { 
    
    $table .= $i . ' x '. $operande . ' = ' . $i*$operande.'<br>';

  }

  return $table;
}
