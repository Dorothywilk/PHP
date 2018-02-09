<?php

namespace Poo;


class Requete
{
  public $sql, $param;

  public function __construct( Array $req )
  {
    $this->sql = $req[ 'sql' ];

    if ( isset( $req[ 'item' ] ) ) {
      $this->param = $req[ 'item' ];
      $this->getReps();
    } else {
      $this->getReps();
    }
    //aff($this);
  }

  public function getRep()
  {
    $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

    $this->réponse = $cnx->query( $this->getSql() )
      ->fetchAll( \PDO::FETCH_OBJ );

//        aff( $this->réponse );

    // Bon code pour geqPere1.sql
    if ( ! empty( $this->réponse[ 0 ] ) ) {
      $this->réponse = $this->réponse[ 0 ]->nom;
    } else $this->réponse = '';


  }

  public function getReps()
  {
    $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
    $this->sql = $this->getSql();
    $this->réponse = $cnx->query( $this->sql )
      ->fetchAll( \PDO::FETCH_OBJ );

//    aff( $this->réponse );

    if ( isset( $this->param ) ) {
      $this->réponse = ( isset( $this->réponse[ 0 ] ) ) ? $this->réponse[ 0 ]->nom : 'Néant';
    }

//    affR( $r );
//    echo 'oki';
    return $this->réponse;

//    $r = $this->réponse;
//    $ps = array_keys( (array) $r[ 0 ] ); // Get les clefs, nom des propriétés
//    echo '<table class="table table-bordered table-striped table-sm">
//	<thead class="grey lighten-1">
//
//	<tr>';
//    foreach ( $ps as $p ) {
//      echo '<th>' . ucfirst($p) . '</th>';
//    }
//    echo '</tr></thead>';
//
//    echo '<tr>';
//
//    foreach ( $r as $row ) {
//      foreach ( $row as $p ) { // p comme propriété
//        echo '<td>' . $p . '</td>';
//      }
//      echo '</tr>';
//    }
//
//    echo '</table>ooo';

    // Bon code pour geqPere1.sql
    //    if (!empty($this->réponse[0])) {
    //      $this->réponse = $this->réponse[0]->nom;
    //    } else $this->réponse = '';


  }

  public function getSql()
  {
    $sqlFile = 'sql/' . $this->sql . '.sql';
    $query = sprintf( file_get_contents( $sqlFile ), $this->param );
//    aff( $query );
    return $query;
  }


}

