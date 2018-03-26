<?php 
		//Allow the config
		define('__CONFIG__', true);
		//Require the config
		require_once "../inc/config.php";

		if($_SERVER['REQUEST_METHOD'] == 'POST') {
			header('Content-Type: application/json');

			$return = [];



			echo json_encode($array, JSON_PRETTY_PRINT); exit;

		
		}
		

?>