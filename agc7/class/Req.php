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
    
    
    // $r pur Réponse
//$r = $cnx->query( $q )
//         ->fetchAll( PDO::FETCH_OBJ );
//    aff($query);
    return $query;
  }
    
  public function getRep()
  {
      $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
      $this->rep = $cnx->query( $this->getSql() )
          ->fetchAll( \PDO::FETCH_OBJ ); 
      $this->rep = $this->rep[0]->nom;
  }
    
  
}
