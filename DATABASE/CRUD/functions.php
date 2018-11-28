<?php


// FUNCTION 1---------

function connection() {
$servername="localhost";
$username="root";        
$password="";
$dbName="CRUD";


//========================SERVER-CONNECTION========================

global $conn;
 $conn= new mysqli($servername, $username, $password, $dbName);

//========================DATABASE-CONNECTION======================

if($conn->connect_error)    {
    echo "Connection Failed";    
}else {
     
 }

}

// FUNCTION 2---------

function insertData($tablename,$values) {

$array_to_string_columns=implode(",",(array_keys($values)));
$array_to_string_values="'".implode("','",(array_values($values)))."'";

$INSERT="INSERT INTO $tablename($array_to_string_columns) VALUE($array_to_string_values)";

global $conn;
if($conn->query($INSERT)) {
    
}else{
    echo "Quebry Failed";
 }
}

//_name,_lastname,_username,_password,_email
//'$name','$lname','$uname','$password','$email'
//_temp

// FUNCTION 5---------

function connection_close() {
  global $conn;
  $conn->close();
}

?>