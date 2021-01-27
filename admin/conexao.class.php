<?php
class Conexao{
	private static $user = "3320855_psymed";
	private static $senha = "psymed123";
	private static $host = "fdb17.runhosting.com";
	protected static $conn;
	private function __construct(){
		self::$conn= new PDO('mysql:host=fdb17.runhosting.com;dbname=3320855_psymed', self::$user, self::$senha);
		self::$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		self::$conn->exec('SET NAMES utf8');
	
	}
	public static function conexao(){
		if (!self::$conn) {
            		new Conexao();
        	}
        	
        	return self::$conn;
	}
	
}

?>
