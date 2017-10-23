<?php
/**
 * Created by C7.
 * User: Li
 * Date: 23/10/2017
 * Time: 20:41
 */

$o=new stdClass();

$o->id=1;
$o->name='train';
$o->pere=1;


aff($o);

echo '<hr>';


echo 'Ici: Réc. nom de propriété';

$properties = array_keys((array)$o);
aff($properties);

echo '<hr>';
