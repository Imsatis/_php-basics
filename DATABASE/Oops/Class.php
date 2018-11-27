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
   


//-------------------------Connection Close----------------------//

    function connection_close(){

        $this->conn->close();
    }

}

$obj = new MB; 


?>