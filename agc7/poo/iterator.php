<?php

class MaClasse implements Iterator {
	protected $n;
	const MAX = 5;

	public function rewind() {
		$this->n = 0;
	}

	public function next() {
		$this->n ++;
	}

	public function key() {
		
		return $this->n + 1;
	}

	public function current() {
		return $this->n;
	}

	public function valid() {
		return $this->n <= self::MAX;
	}
}

$c = new MaClasse();

echo '<pre>';
var_dump($c);
echo '</pre>';

foreach ( $c as $key => $val ) {
	echo 'Increment ' . $key . ' : ' . $val . '<br/>';
}
