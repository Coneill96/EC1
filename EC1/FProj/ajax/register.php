<?php 
		//Allow the config
		define('__CONFIG__', true);
		//Require the config
		require_once "../inc/config.php";

		if($_SERVER['REQUEST_METHOD'] == 'POST') {
			header('Content-Type: application/json');


		$return = [];

		$Username = Filter::String($_POST['Username'] );
		
		$findUser = $con->prepare("SELECT user_id FROM users WHERE Username = '$Username' LIMIT 1");
		$findUser->bindParam(':Username', $Username, PDO::PARAM_STR);
		$findUser->execute();

		if($findUser->rowCount() == 1) {

			$return['error'] = "You already have an account";
		} else {
			$addUser = $con->prepare("INSERT INTO users(Username, password) VALUES(:Username, :password)"); 
			$addUser->bindParam(':Username', $Username, PDO::PARAM_STR);
			$addUser->bindParam(':password', $password, PDO::PARAM_STR);
			$addUser->execute();
		}



		$return['redirect'] = '/dashboard.php';
		$return['name'] = "Chris O'Neill";
			echo json_encode($return, JSON_PRETTY_PRINT); exit;
		} else {
			//Kill the script
			exit('test');
		}


?>