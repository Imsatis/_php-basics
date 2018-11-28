<?php

include_once "Class.php";

//Required----

$dbname="userlogin";
$tableName="user";


//--------------Connection-Start--------------//


$obj->start_connection($dbname);


//-----------------Set Data------------------//

$obj->set_tableName($tableName);
$obj->set_columnName();



//----------------Update By Id--------------//


if(isset($_GET['update'])) {
  $id = $_GET['update'];
  $obj->update_by_id($id);
  
  
}

//----------------Update By Id--------------//

if(isset($_GET['delete'])) {
  $id = $_GET['delete'];
  $obj->delete_by_id($id);
  
  
}


 //------------------Insert Data------------------//
 

 if (isset($_GET['insert'])) {
   
     
     $obj->insert_column();
    

 }


//------------    ------Read All Data--------------//


echo $obj->read_all();

//------------------Add list button--------------//
 
echo "<form action='object.php' method='get'><input type='submit' name='insert' value='Add List'></form>";

//-------------------Connection Close---------------

$obj->connection_close();


?>