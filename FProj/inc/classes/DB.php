<?php

class DB {

	protected static $con;

	private function __construct() {

		try {

			self::$con = new PDO( 'mysql:charset=utf8mb4;host=localhost;port=3306;dbname=project', 'root', '');
			self::$con->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
			self::$con->setAttribute( PDO::ATTR_PERSISTENT, false );

		} catch (PDOException $e) {
			echo "Could not connect to database.";
			exit;
		}
	}

	public static function getConnection() {
		// If this instance has not been started, start it.
		if (!self::$con) {
			new DB();
		} 

		//Retturn the writeable db connection
		return self::$con;
	}
}
?>