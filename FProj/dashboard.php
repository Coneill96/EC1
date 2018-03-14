<?php 
    //Allow the config
    define('__CONFIG__', true);
    //Require the config
    require_once "inc/config.php"; 
   
  ForceLogin();

  $user_id = $_SESSION['user_id'];

  $getUserInfo = $con->prepare("SELECT Username, reg_time FROM users WHERE user_id = :user_id LIMIT 1");
  $getUserInfo->bindParam(':user_id', $user_id, PDO::PARAM_INT);
  $getUserInfo->execute();

  if($getUserInfo->rowCount() == 1) {
    $User = $getUserInfo->fetch(PDO::FETCH_ASSOC);

  } else {

    header("Location: logout.php"); exit;
  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>EC1 Form login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <meta name="robots" context="follow">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.40/css/uikit.min.css" />
  <title>Dashboard</title>
  <base href="/" />
 </head>

 <body>
  <div class="uk-section uk-container">
    <h2>Dashboard</h2>
    <p>Hello <?php echo $User['Username']; ?>, you registered at <?php echo $User['reg_time']; ?></p>
      <p><a href="/EC1/FProj/logout.php">Logout</a></p>
  </div>




<?php require_once "inc/footer.php"; ?>
 
 </body>
 </html>