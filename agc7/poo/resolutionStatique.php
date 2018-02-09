<?php namespace Poo;

class Humain {

	public static function testSelf()
	{
		return self::getName();
	}

	public static function testStatic()
	{
		return static::getName();
	}

	private static function getName()
	{
		return 'Je suis humain<br>';
	}
}

class Francais extends Humain {

	public static function getName()
	{
		return 'Je suis Français<br>';
	}
}

// self:: fait référence uniquement à la classe dans laquelle il est défini
// Ne suit pas les règles de l'héritage
echo Francais::testSelf();
echo Francais::testStatic();

