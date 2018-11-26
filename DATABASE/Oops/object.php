<?php

include_once "Class.php";

//Required----

$dbname="userlogin";
$tableName="user";

//-------Conncetion-Start

$obj->start_connection($dbname);

//-------Select All



echo $output = $obj->read_all($tableName);

#echo "heloow";
 
   


$obj->connection_close();


?>