<?php 
function ForceLogin() {
		if(isset($_SESSION['user_id'])) {
		} else {
			// The iser is not allowed here.
			header("Location: login.php"); exit;
		}
	}
	function ForceDashboard() {
		if(isset($_SESSION['user_id'])) {
			// The iser is not allowed here.
			header("Location: dashboard.php"); exit;
		} else {

		}
	
	}

	function FindUser($con, $Username, $return_assoc = false) {

		$Username = (string) Filter::String( $Username );

		$findUser = $con->prepare("SELECT user_id, password FROM users WHERE Username = '$Username' LIMIT 1");
		$findUser->bindParam(':Username', $Username, PDO::PARAM_STR);
		$findUser->execute();

		if($return_assoc) {
			return $findUser->fetch(PDO::FETCH_ASSOC);
		}

		$user_found = (boolean) $findUser->rowCount();

		return $user_found;

	}
?>