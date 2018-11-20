<?php

$servername="localhost";
$username="root";
$password="";
$dbName="CRUD";


//========================SERVER-CONNECTION========================

$conn = new mysqli($servername, $username, $password, $dbName);

//========================DATABASE-CONNECTION======================

if($conn->connect_error) {
    echo "Connection Failed";    
}else {
    
}

//========================EXECUTE-QUERY============================

#CREATE DATABASE QUERY

/*
$CREATE="CREATE DATABASE $dbName";


if($conn->query($CREATE))  {

}else{
    echo "Query Failed";
} */

#CREATE TABLE QUERY

$CREATE="CREATE TABLE _TEMP(
    _id INT PRIMARY KEY AUTO_INCREMENT,
    _name varchar(50) not null,
    _lastName varchar(50) not null,
    _userName varchar(50) not null,
    _password varchar(50) not null,
    _email varchar(50) not null
    
)";

if($conn->query($CREATE)){

}else{
    echo "Query Failed";
}

$conn->close();

?>