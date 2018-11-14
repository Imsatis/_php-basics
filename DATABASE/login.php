<?php

$servername="localhost";
$user="root";
$password="";
$dbname="userlogin";

$name=$_POST['name'];
$username=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];

$INSERT="INSERT INTO USERDATA(_NAME,_USERNAME,_EMAIL,_PASSWORD)VALUE('$name','$username','$email','$password')";

$conn= new mysqli($servername,$user,$password,$dbname);

if($conn->connect_error()){
    echo "CONNECTION FAILED";
}

else{ 
    
   #echo "CONNECTION ESTABLISHED";
}

if($conn->query($INSERT)) {

}

$conn->close();

?>