<?php

$servername="localhost";
$username="root";
$password="";
$dbname="userlogin";

$TABLE= " CREATE TABLE userMessage (
      _OrderId int unsigned auto_increment primary key,
      _uniqueKey int not null,
      #_LNAME  varchar(255) not null,
      _sendUserKey int not null,
      _message VARCHAR(255),
      _receiveUserKey int not null,
      _date DATE,
      _time VARCHAR(10)
      #_REGDATE timestamp 
)";

$conn= new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
    echo "<h1>CONNECTION FAILED</h1> <br>";
}else{
    echo "<h1>CONNECTION ESTABLISHED </h1><br>";
}

if($conn->query($TABLE)===TRUE) {
  echo "<H2>TABLE CREATED SUCCESSFULLY..</H2><br>";
}else{
    echo "<h2>TABLE NOT CREATED..</h2><br>";
}

$conn->CLOSE();

?>