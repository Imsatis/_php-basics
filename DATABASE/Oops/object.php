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

<<<<<<< HEAD
$results = $obj->select_all($tableName);
  $output='<table>';
  $columnName='';
if($results->num_rows>0){
     //print_r($columnName=array_keys($results->fetch_assoc()));
     
     //$columnName=array_keys($results->fetch_assoc());

     /*
     for($i=0;$i<sizeof($columnName);$i++) {
      $output.=$columnName[$i]." | ";
     }
     echo"<br>".$output;
     
     */
    $check=true;

    while($rows = $results->fetch_assoc()) {
      #echo "$rows[]<br>";
      if($check){
        $columnName = array_keys($rows);
        $check=false; 
       }
       $output .= "<tr>";

      for($i=0;$i<sizeof($columnName);$i++) {
           $output .= "<td>".$rows[$columnName[$i]]."</td>";
      }
      $output .= "</tr>";
    }
    
    echo $output;
    #echo "<br>";
    #print_r($columnName);
    
    /*
    $rows = $results->fetch_array();
    print_r($rows['_NAME']);
    */


}else{
    echo "No Recor Found";
=======


//$obj->read_all();

if(isset($_GET['update'])) {
  $id = $_GET['update'];
  $obj->update_by_id($id);
  
  
>>>>>>> 5c887d48e6c922a1f4ab91a8f7185c310112b756
}

echo $obj->read_all();
 

   


$obj->connection_close();


?>