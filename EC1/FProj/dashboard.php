<?php 
    //Allow the config
    define('__CONFIG__', true);
    //Require the config
    require_once "inc/config.php"; 
   
  Page::ForceLogin();

  $User = new User($_SESSION['user_id']);
  

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
    <h2>UUJ Extenuating Circumstance form</h2>
    <p>Hello <?php echo $User->Username; ?>, you registered at <?php echo $User->reg_time; ?></p>
      <p><a class="logout" href="/EC1/FProj/logout.php">Logout</a></p>
  </div>

  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
    <div class="well">Extenuating Circumstances</div>
    <form class="form1">
    <div class="row">
      <div class="col-sm-2">
        <h5>Student Name:</h5>
      </div>
      <div class="col-sm-3">
        <h5>Programme:</h5>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-2">
        <h5>Username:</h5>
      </div>
      <div class="col-sm-3">
        <h5>Course:</h5>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-2">
        <h5>DOB:</h5>
      </div>
    </div>
    </form>

    <form class="form2">
      <div class="row">
      <h3 class="req_header">Requests</h3>
    </div>
    <div class="row">
      <div class="btn-group">
       <button type="button" class="btn btn-primary btn4">+ New Request</button>
       <button type="button" class="btn btn-primary btn5">Edit Request</button>
       <button type="button" class="btn btn-primary btn6">- Delete Request</button>
      </div>
    </div>
    <br>
    <div class="row">
      <div class="col-sm-6">
     <h5 class="Req_id">Request ID:</h5>
      </div>
      <div class="col-sm-6">
     <h5 class="Req_id">Creation Date:</h5>
      </div>
    </div>
    <h3>Assessments</h3>
    <div class="row">
      <div class="col-sm-5">
        <h5>Assessment</h5>
      </div>
      <div class="col-sm-2">
        <h5>Due Date</h5>
      </div>
       <div class="col-sm-2">
        <h5>Preferred Outcome</h5>
      </div>
       <div class="col-sm-3">
        <h5>Preferred Extension</h5>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-5">
        <input class="uk-input" id="assessment_name" required="required" type="text" placeholder="Assessment Name">
      </div>
      <div class="col-sm-2">
        <input class="uk-input" id="Due_date" required="required" type="date" placeholder="Due Date">
      </div>
       <div class="col-sm-2">
        <div class="uk-margin">
        <div class="uk-form-controls" placeholder="Preferred outcome">
            <select class="uk-select" id="form-stacked-select" >
                <option>Extension of Deadline</option>
                <option>Another assessment oppurtunity</option>
                <option>Deferred placement</option>
            </select>
        </div>
    </div>
      </div>
       <div class="col-sm-3">
        <input class="uk-input" id="Preferred_extension" required="required" type="text" placeholder="Preferred Extension">
      </div>
    </div>
    <button type="button" class="btn btn-primary btn7">+ Add Assessment</button>
    </form>

    <form class="form3">
    <h3 class="ror_header">Reason for Request</h3>
    <p>Please provide below your reason(s) for EC1 submission</p>

    <div class="row">
    <div class="col-sm-2">
      <p>Details of claim :</p>
    </div>
    <div class="col-sm-9">
      <input class="uk-input" id="details_of_claim" required="required" type="text" placeholder="Details...">
    </div>
  </div>
  <br></br>
  <div class="row">
  <div class="col-sm-2">
     <p>Date affected from :</p>
   </div>
    <div class="col-sm-2">
      <input class="uk-input" id="D_a_f" required="required" type="date">
   </div>
   <div class="col-sm-2">
    <p>Date affected to :</p>
 </div>
 <div class="col-sm-2">
      <input class="uk-input" id="D_a_t" required="required" type="date">
   </div>
  </div>
  <br></br>
  <div class="row">
  <div class="col-sm-2">
    <p>Evidence :</p>
 </div>
 <div class="col-sm-8">
  <input class="uk-input" id="evidence" required="required" type="text" placeholder="Details...">
</div>
  <div class="col-sm-2">
   <button type="button" class="btn btn-primary btn7">Upload</button> 
</div>



  </form>





    

  </div>
  <div class="col-sm-2"></div>
  </div>

<?php require_once "inc/footer.php"; ?>

 </body>
 </html>