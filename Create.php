<?php
$dbname="UserLogin";
$CREATE="CREATE DATABASE $dbname";
$servername="localhost";
$username="root";
$password="";


$conn= new mysqli($servername,$username,$password);

if ($conn->connect_error){
    echo "Connection Failed <br>";
}else{
    echo "<h1>Connection Established </h1><br>";
}

if($conn->query($CREATE)===TRUE){
    echo "DATABASE CREATED SUCESSFULLY <br>";
}else{
    echo "!ERROR->NOT CRETAED ".$conn->error."<br>";
}

?>