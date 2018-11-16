<?php
/*
$servername="localhost";
$username="root";
$password="";
$dbname="userlogin";


$conn = new mysqli($servername,$username,$password,$dbname);

*/

$conn = new mysqli("localhost","root","","userlogin");


if ($conn->connect_error) {
    echo "Connection Failed".$conn->connect_error;
}else{
    #echo"Connection Established";
}

?>  