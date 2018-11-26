<?php

class MB {
   
    private $conn;
    private $results;

  //-------------------------Connection Start----------------------//

    function start_connection($dbname){
        $this->conn = new mysqli("localhost","root","",$dbname);

        if($this->conn->connect_error){
            echo "Connection Failed";
        }
    }


  //-------------------------Select All----------------------//

   function select_all($tableName) {
    $SELECT="SELECT * FROM $tableName";
    $this->results = $this->conn->query($SELECT);
    return $this->results;
   }
   
  //-------------------------Read All----------------------//

  function read_all($tableName) {
    
    $results = $this->select_all($tableName);
    
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
        $j=0;
    
        while($rows = $results->fetch_assoc()) {
          #echo "$rows[]<br>";
                    if($check){
                         $columnName = array_keys($rows);
                         $check=false;$output .= "<tr>";
                         for($i=0;$i<sizeof($columnName);$i++) {
                           $output .= "<th>" . $columnName[$i]  ."</th>";
                         }
                         $output .= "</tr>";
                         $j++;
                        }
          
                    $output .= "<tr>";
    
          for($i=0;$i<sizeof($columnName);$i++) {
               $output .= "<td>".$rows[$columnName[$i]]."</td>";
          }
          $output .= "<td><a href='object.php?id={$rows[$columnName[0]]}'>Update</a></td></tr>";
        }
        $output .= "</table>";
         
        //echo $output;
        //echo $j;
        #echo "<br>";
        #print_r($columnName);
        
        /*
        $rows = $results->fetch_array();
        print_r($rows['_NAME']);
        */
     }else{
        echo "No Record Found";
    }
    return $output;
  }

//-------------------------Connection Close----------------------//

    function connection_close(){

        $this->conn->close();
    }

}

$obj = new MB; 


?>