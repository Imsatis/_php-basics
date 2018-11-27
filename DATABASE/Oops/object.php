<?php

include_once "Class.php";

//Required----

$dbname="userlogin";
$tableName="user";

//-------Conncetion-Start

$obj->start_connection($dbname);

//-------Select All

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
}
 
  


$obj->connection_close();

?>