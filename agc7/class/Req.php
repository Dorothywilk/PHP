<?php

namespace gc7;


class Requete
{
  public  $sql,
          $param;
  
  public function __construct(Array $req)
  {
    $this->sql = $req['sql'];
    $this->param = $req['item'];
    
    $this->getRep();
  }

  public function getSql ()
  {
    $sqlFile = 'sql/'.$this->sql;
    $query=sprintf(file_get_contents($sqlFile), $this->param);

    return $query;
  }
    
  public function getRep()
  {
      $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
      $this->réponse = $cnx->query( $this->getSql() )
          ->fetchAll( \PDO::FETCH_OBJ ); 
      
      if (!empty($this->réponse[0])) {
        $this->réponse = $this->réponse[0]->nom;
      }
      else $this->réponse ='';
  }
    
  
}
