
<?php

session_start();

if(isset($_GET['logout'])) {
    unset($_SESSION['username']);
    //header("location:loginTask.php");
    //echo dirname(__FILE__);
   }
   


if(!isset($_SESSION['username'])) {
   header("location:loginTask.php");
}



//$target_dir = "uploads/";
//echo $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);

?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
    
<div class="black"> 
    <div class="topwrap">
          <div class="container">
              <div class="jumbotron">
                   <div class="row">
                        <div class="col-md-10">
                             <?php echo "<h2>Welcome ". ucfirst("{$_SESSION['username']}")."!</h2>"?>
                        </div>
                        <div class="col-md-2">
                         <form>
                         <a href='profile.php'><button class="btn btn-primary" value="1" name="logout">Log out</button></a>
                          
                         </div>
                   </div>
              </div>
          </div>
    </div>
</body>
</html>