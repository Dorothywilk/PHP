<?php
namespace Gc7;
/**
 * Created by C7.
 * User: Li
 * Date: 19/10/2017
 * Time: 16:49
 */
class Base {
	public function sayHello() {
		echo '2) Passe par Base::sayHello()<br>';
		echo '<br>Hello ';
	}
}

trait SayWorld {
	public function sayHello() {
		echo '1) Passe par trait SayWorld<br>';
		parent::sayHello();
		echo 'World!';
	}
}

class MyHelloWorld extends Base {
	use SayWorld;

	public function sayHellouuu() {
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


class Uuu extends Base {
	use SayWorld;

	public function __construct() {
		echo '<p><b>Uuu</b></p>';
		$this->sayHello();
	}
}

$u = new Uuu;




