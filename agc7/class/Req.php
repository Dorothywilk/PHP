<?php

namespace gc7;


class Requete
{
  public  $sqlFile,
          $param;
  
  public function __construct(Array $req)
  {
    $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
    $this->sqlFile = 'sql/'.$req['sql'];
    $this->param = $req['item'];
    
    $this->rep = $cnx->query( $this->getSql() )
         ->fetchAll( \PDO::FETCH_OBJ );  
  }

  public function getSql ()
  {
    $query=sprintf(file_get_contents($this->sqlFile), $this->param);
    
    
    // $r pur Réponse
//$r = $cnx->query( $q )
//         ->fetchAll( PDO::FETCH_OBJ );
//    aff($query);
    return $query;
    
  }
  
}
