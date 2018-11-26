<?php

class MB {
   
    private $conn;
    private $results;
    private $columnName;
    private $tableName;

  //-------------------------Select All----------------------//

   function set_tableName($tableName) {
    $this->tableName = $tableName;
   }

   function set_columnName(){
    $result=$this->select_all();
    if($result->num_rows>0){
      $this->columnName = array_keys($row=$result->fetch_assoc());
    } 
  }
  
  //-------------------------Connection Start----------------------//

    function start_connection($dbname){
        $this->conn = new mysqli("localhost","root","",$dbname);

        if($this->conn->connect_error){
            echo "Connection Failed";
        }
    }


  //-------------------------Select All----------------------//

   function select_all() {
    $SELECT="SELECT * FROM $this->tableName";
     return $this->conn->query($SELECT);
    
   }
  
  //-------------------------Select By Id----------------------//  

   function select_by_id_columnName($id) {
    $SELECT="SELECT * FROM $this->tableName where " . $this->columnName[0] ."= $id";
     return $this->conn->query($SELECT);
   }

  //-------------------------Read All----------------------//

  function read_all() {
    
    $results = $this->select_all();
    
    $output='<table>';

    //$columnName='';
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
                         //$this->columnName = array_keys($rows);
                         $check=false;$output .= "<tr>";
                         for($i=0;$i<sizeof($this->columnName);$i++) {
                           $output .= "<th>" . $this->columnName[$i]  ."</th>";
                         }
                         $output .= "</tr>";
                         $j++;
                        }
          
                    $output .= "<tr>";
    
          for($i=0;$i<sizeof($this->columnName);$i++) {
               $output .= "<td>".$rows[$this->columnName[$i]]."</td>";
          }
          $output .= "<td><a href='object.php?update={$rows[$this->columnName[0]]}'>Update</a></td></tr>";
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

//-------------------------Update by Id----------------------//

  function update_by_id($id){
    $columnNvalues='';
    for($i=1;$i<sizeof($this->columnName);$i++) {
        //echo $feild="feild$i";
        if(isset($_POST["feild$i"])) {
            $columnNvalues .= $this->columnName[$i] . "='" . $_POST["feild$i"] . "', ";
        }
        
    }
    $columnNvalues=rtrim($columnNvalues,', '); 
    //echo $columnNvalues;
    $UPDATE="UPDATE $this->tableName SET $columnNvalues WHERE " . $this->columnName[0] . "=$id";
    
    $this->conn->query($UPDATE);

      echo "<form action='object.php?update=$id' method='post'>";

      $results = $this->select_by_id_columnName($id);

      $row = $results->fetch_assoc();
     for($i=1;$i<sizeof($this->columnName);$i++) {
        echo $this->columnName[$i]."<input name='feild$i' type='text' value='{$row[$this->columnName[$i]]}'>";    
    }
     echo "<input type='submit' value='update'></form>";
  }


//-------------------------Connection Close----------------------//

    function connection_close(){

        $this->conn->close();
    }

}

$obj = new MB; 


?>