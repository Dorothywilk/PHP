<?php
/**
 * Var_dump avec &lt;pre>
 * @param $arr
 * @param null $var
 */
function vd( $arr, $var = null )
{
  echo '<pre> ' . ( ( null === $var ) ? '' : $var . ':' );
  var_dump( $arr );
  echo '</pre>';
}
