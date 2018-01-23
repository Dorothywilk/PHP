<?php
/**
 * Var_dump avec &lt;pre>
 *
 * @param $arr
 * @param null $var
 */
function vd( $arr, $var = null )
{
  echo '<pre> ' . ( ( null === $var ) ? '' : $var . ':' );
  var_dump( $arr );
  echo '</pre>';
}

/**
 * Var_dump compressé d'une collection pour le champs nom
 *
 * @param $arr
 * @param null $var
 */
function vdColl( $arr, $var = null )
{
  echo '<ul class="vdColl"> ' . ( ( null === $var ) ? '' : '<span>' . $var . ':</span><br>' );
  foreach ( $arr as $k => $m ) {
    echo $k . ': ' . $m->nom . '<br>';
  }

  echo '</ul>';
}
