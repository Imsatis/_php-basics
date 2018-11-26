<?php

include_once "Class.php";

//Required----

$dbname="userlogin";
$tableName="user";

$obj->start_connection($dbname);

$obj->set_tableName($tableName);
$obj->set_columnName();

//-------Connection-Start



//-------Select All



//$obj->read_all();

if(isset($_GET['update'])) {
  $id = $_GET['update'];
  $obj->update_by_id($id);
  
  
}

echo $obj->read_all();
 

   


$obj->connection_close();


?>