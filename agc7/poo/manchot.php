<?php
class Manchot
{
  /**
   * Methode magique __call()
   *
   * @param string $method Nom de la méthode à appeler
   * @param array $arguments Tableau de paramètres
   * @return void
   * @access private
   */
  public function __call($method,$arguments)
  {
      echo 'Vous avez appelé la méthode ', $method, ' avec les arguments : ', implode(', ',$arguments);
  }
}
 
$george = new Manchot();
$george->voler('Afrique', 123, 'abc');

