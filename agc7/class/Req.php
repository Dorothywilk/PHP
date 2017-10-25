<?php

namespace gc7;


class Requete
{
  public  $sqlFile,
          $param;
  
  public function __construct(Array $req)
  {
    $this->sqlFile = 'sql/'.$req['sql'];
    $this->param = $req['item'];
    $this->sql = $this->getSql();
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
