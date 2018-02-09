<?php namespace Poo;

$monPion = new Pion();
$monPion->avance()->avance()->recule()->avance()->avance()->avance();
echo '<br><b>' . $monPion . '</b>';

class Pion {
	public $x = 0;

	public function avance()
	{
		$this->x ++;
		echo 'Le pion avance d\'une case et se trouve case ' . $this->x . '<br>';

		return $this;
	}

	public function recule()
	{
		$this->x --;
		echo 'Le pion recule d\'une case et se trouve case ' . $this->x . '<br>';

		return $this;
	}

	public function __toString()
	{
		return 'Je suis dans la case ' . $this->x;
	}

}
