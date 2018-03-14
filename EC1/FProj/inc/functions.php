<?php 
function ForceLogin(){

		if(isset($_SESSION['user_id'])) {

		} else {
			// The iser is not allowed here.
			header("Location: login.php"); exit;
		}
	}

	function ForceDashboard() {
		if(isset($_SESSION['user_id'])) {

		} else {
			// The iser is not allowed here.
			header("Location: dashboard.php"); exit;
		}
	
	}

?>