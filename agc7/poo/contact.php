<?php namespace Poo;

include 'class/Contact.php';

$pierre = new Contact();
$pierre->setAdresse( '2, rue des fleurs', '25000', 'Bezac' );
$pierre->setSource( 'École' );

echo 'Pierre DUPONT<br>' . $pierre->getAdresse() . '<br><br>';
echo '<em>(Origine du contact: ' . $pierre->getSource() . ')</em><br><br>';
