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
  $pdo = pdo( 'aaxu' ); // BdD de tests

  $sql = "select * from xu limit 20";
  //  affLign( $sql );
  //  $pdo->query( $sql );
  $req( $sql, $pdo );

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

  /*
   * Tout le Groupe
  $sql = "SELECT concat(repeat('-', pf * 7), pseudo) 'Arborescence'
FROM aaxu.xu
ORDER BY bg;";
   */


  $sql = "SELECT concat(repeat('&nbsp;', pf * 5), id, ' ', pseudo, ' ', uid, ' (', bg, ' - ', bd, ')')
'Arborescence'
FROM xu
where bg>=331
  and bd<=370
ORDER BY bg;";
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


