<?php namespace GC7; ?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql"
      target="_blank">B</a></h1>

  <h3 class="lead">Travail réel / b</h3>

  <p class="lead">...</p>
</div>
<div class="maingc7">
  <?php
  $pdo = pdo( 'aazt' ); // BdD de tests

  $sql = "select 1";
  //  affLign( $sql );
  //  $pdo->query( $sql );

  /*
    $sql = "select * from xub2";
    // $req( $sql, $pdo );
    $cnx = $pdo->query( $sql );
    $ta = $cnx->fetchAll();

    $sql = "select * from xub3";
    // $req( $sql, $pdo );
    $cnx = $pdo->query( $sql );
    $tb = $cnx->fetchAll();

    echo '<table>';
    $i = 0;
    foreach ( $ta as $a ) {

      $chaineA = '<td>' . $a[ 'id' ] . ' ' . $a[ 'pseudo' ] . ' ' . $a[ 'uid' ] . '</td>';
      $b = $tb[ $i ];
      $chaineB = '<td>' . $b[ 'id' ] . ' ' . $b[ 'pseudo' ] . ' ' . $b[ 'uid' ] . '</td>';

      $diff = ( $chaineA == $chaineB ) ? 0 : 1;

      if ( $diff ) {
        echo '<tr>' . $chaineA . $chaineB;
        echo '<td>' . $diff . '</td></tr>';
      }
      $i++;
    }
    echo '</table>';
    /*
      echo '<pre>';
      var_dump( $rep[0] );
      echo '</pre>';
    */
  //  $req( $sql, $pdo );

  $sql = "select count(*) from aaxu.xub2";
  $req( $sql, $pdo );

  $sql = "select count(*) as cntXu from aaxu.xu";
  $req( $sql, $pdo );

  $sql = "explain aazt.xub2";
  $req( $sql, $pdo );

  //  $sql = "select * from aazt.b1 order by id asc";
  //  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28

  /*
    echo $i.'<pre>'; var_dump( $rep ); echo '</pre>';
    if ( isset( $rep[ 1 ] ) && $rep[ 1 ][ 0 ] > 3 ) echo $i . ' ' . $rep[ 0 ][ 0 ] . ' - ' . $rep[ 1 ][ 0 ] . '<br>';
  */
  ?>
</div>


