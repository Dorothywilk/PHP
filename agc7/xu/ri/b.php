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

//  $sql = "select 1";
//  affLign( $sql );
//  $pdo->query( $sql );

$table = 'uuu.xoops_users';

for ( $i = 2; $i < 0; $i++ ) {
  $sql = "
select uname
from $table
where uid = $i
union
select count(*)
from $table
where parr=
		(select uname from $table where uid=$i)
		";
  $cnx = $pdo->query( $sql );
  $rep = $cnx->fetchAll();
//    echo $i.'<pre>'; var_dump( $rep ); echo '</pre>';
  if ( isset( $rep[ 1 ] ) && $rep[ 1 ][ 0 ] > 3 ) echo $i . ' ' . $rep[ 0 ][ 0 ] . ' - ' . $rep[ 1 ][ 0 ] . '<br>';


}

//  $req( $sql, $pdo );

$sql = "select count(*) from aazt.b2";
    $req( $sql, $pdo );

$sql = "select count(*) from aazt.b1";
    $req( $sql, $pdo );

  $sql = "select * from aazt.b2 order by id desc";
    $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>


