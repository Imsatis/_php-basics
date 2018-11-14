<?php

$servername="localhost";
$user="root";
$pass="";
$dbname="userlogin";

$conn= new mysqli($servername,$user,$pass,$dbname);

if($conn->connect_error) {
    echo "CONNECTION FAILED";
}

else{ 
    
   #echo "CONNECTION ESTABLISHED";
}

if(isset($_POST['name']) && isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password']))
{
    $name=$_POST['name'];
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];

    $INSERT="INSERT INTO userdata(_NAME,_USERNAME,_EMAIL,_PASSWORD)VALUE('$name','$username','$email','$password')";

    if($conn->query($INSERT)) {

    }
  }

  if(isset($_POST['USERNAME']) && isset($_POST['PASSWORD'])) {
      $USERNAME=$_POST['USERNAME'];
      $PASSWORD=$_POST['PASSWORD'];
      $data="SELECT * FROM USERDATA WHERE _USERNAME='$USERNAME'";
      $CHECK="SELECT * FROM userdata where _USERNAME='$USERNAME' AND _PASSWORD='$PASSWORD'";
      if($result=$conn->query($CHECK)){
           if($result->num_rows>0) {
               $userinfo=$conn->query($data);
               $INFO=$userinfo->fetch_assoc();

               echo "<h2>!Hellow <b>$INFO[_NAME].....<b></h2><br>";
               echo "<h3>Your Username is: <b>$INFO[_USERNAME]</b></h3><br>";
               echo "<h3>Your Email id is: <b>$INFO[_EMAIL]</b></h3><br>";
               
           }else echo "INCORRECT PASSWORD";  
      }else{
          echo "Query Fail";
      }
  }


$conn->close();

?>