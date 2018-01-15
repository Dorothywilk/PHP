<h3>function()</h3>
<?php


function afficheCoucou( $prenom )
{
  return 'Coucou ' . $prenom . ' !<br>';
}

echo afficheCoucou( 'Doro' );
echo afficheCoucou( 'Lio' );


function donneMoiLeDouble( $nombre )
{
  return 'Le double de ' . $nombre . ' est ' . ( $nombre * 2 ) . ' !<br>';
}

echo donneMoiLeDouble( 10 );
echo donneMoiLeDouble( 20 );
echo donneMoiLeDouble( 30 );
