<?php 
		//Allow the config
		define('__CONFIG__', true);
		//Require the config
		require_once "../inc/config.php";

		if($_SERVER['REQUEST_METHOD'] == 'POST') {
			//header('Content-Type: application/json');


		$return = [];

		$Username = Filter::String( $_POST['Username'] );
		$password = $_POST['password'];
		
		$findUser = $con->prepare("SELECT user_id, password FROM users WHERE Username = '$Username' LIMIT 1");
		$findUser->bindParam(':Username', $Username, PDO::PARAM_STR);
		$findUser->execute();

		if($findUser->rowCount() == 1) {
			$User = $findUser->fetch(PDO::FETCH_ASSOC);

			$user_id = (int) $User['user_id'];
			$hash = (string) $User['password'];

			if(password_verify($password, $hash)) {
				// User is signed in
				$return['redirect'] = 'dashboard.php';

				$_SESSION['user_id'] = $user_id;
			} else {
				$return['error'] = "Invalid Username/Password";
			}

			$return['error'] = "You already have an account";
		} else {
			//They need to create a new account
			$return['error'] = "You do not have an account. <a> href='register.php'>Create one now?</a>";


		}

			echo json_encode($return, JSON_PRETTY_PRINT); exit;
		} else {
			//Kill the script
			exit('Invalid URL');
		}


?>