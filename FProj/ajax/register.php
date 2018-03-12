<?php 
		//Allow the config
		define('__CONFIG__', true);
		//Require the config
		require_once "../inc/config.php";

		header('Content-Type: application/json'); 

		if($_SERVER['REQUEST_METHOD'] == 'POST') {

		} else {
			//Kill the script
			exit('test');
		}

		$array = ['test', 'test2', 'test3', array('name' => 'Chris')];

		echo json_encode($array, JSON_PRETTY_PRINT);

?>