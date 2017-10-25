<?php
function affUser($user)
{
  echo $user->prenom . ' (' . $user->genre . ') : '. $user->estAutorise().'.<br>';
}
  
function nfmt($var)
{
  return number_format ( $var, 2, ',', ' ');
}
