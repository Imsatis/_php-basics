<?php
$servername="localhost";
$username="root";
$password="";
$dbname="userlogin";

$conn= new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
    echo "Connection Failed ".$conn->connect_error;
}else {

    echo "Connection Established";
}
 $TABLE="CREATE TABLE User(
     _ID INT(5) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
     _NAME VARCHAR(50) NOT NULL,
     _USERNAME VARCHAR(50) NOT NULL,
     _EMAIL VARCHAR(50),
     _PASSWORD VARCHAR(50),
     _MOBILE VARCHAR(15),
     _GENDER VARCHAR(10)
 )";

  if($conn->query($TABLE)) {

  }else{
      echo"FAILED";
  }
  $conn->close();

?>