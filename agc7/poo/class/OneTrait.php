<?php namespace Poo;

/**
 * Utilisation d'une méthode à plusieurs endroits
 * (Car limite héritage: UNe seule classe)
 */
class Base {
	public function sayHello()
	{
		echo '2) Passe par Base::sayHello()<br>';
		echo '<br>Hello ';
	}
}

/*
 * Peut avoir aussi des propriétés
 */

trait SayWorld {
	public function sayHello()
	{
		echo '1) Passe par trait SayWorld<br>';
		parent::sayHello();
		echo 'World!';
	}
}

class MyHelloWorld extends Base {
	use SayWorld;

	public function sayHellouuu()
	{
		echo 'Bonjour (sayHellouuu())<br>';
		echo '0) Passe par interne sayHello()<br>';
		$this->sayHello();
	}
}

$o = new MyHelloWorld();
$o->sayHello();
echo '<hr>';
$o->sayHellouuu();
echo '<hr>';


Trait SayBye {
	public function sayBye()
	{
		echo 'Bye bye !';
	}

}


class Uuu extends Base {
	use SayWorld, SayBye;

	public function __construct()
	{
		echo '<p><b>Uuu</b></p>';
		$this->sayHello();
	}
}

$u = new Uuu;
echo '<br>';
$u->sayBye();


/*
 * Si plusieurs trait ont mêmes méthodes (du moins, de même nom),
 * insteadof permet de définir les priorités.
 * Si on doit pouvoir utiliser les 2 selon les cas, as définira un alias
 *
 *   Exemple: use Bonjour, MethodeBonjour{
 *   Bonjour::hello insteadof MethodeBonjour;
 *   MéthodeBye::bye as ciao;
 * }
 *
 *
 * Une trait peut utiliser tout ou partie d'un autre trait.
 * (Usage de use comme pour une classe)
 */

