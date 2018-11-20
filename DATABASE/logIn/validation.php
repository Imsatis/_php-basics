<?php
 
 session_start();

 include "connDatabase.php"; 
 
  IF (isset($_POST['username']) && $_POST['password']) {

 $_SESSION['username']=$_POST['username'];
 $_SESSION['password']=$_POST['password']; 

 $READ="SELECT * FROM user WHERE _USERNAME='{$_SESSION['username']}' AND _PASSWORD='{$_SESSION['password']}'";
  #echo $READ;

  $results=$conn->query($READ); 

  if($results->num_rows>0) {
    header("Location: userPage.php");
      
  }  else {
    header("Location: indexPage.php");
  }
 
 }else{
     echo"nothing";
 }

 $conn->close();

?>