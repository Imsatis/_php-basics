<?php

class LOGIN {

    private $conn;
    private $tableName;

function connection_start($dbname,$table) {

            $servername="localhost";
            $username="root";
            $password="";
            $this->tableName = $table;


$this->conn= new mysqli($servername,$username,$password,$dbname);

     if ($this->conn->connect_error) {
            echo "Connection Failed";    
         }

  }

function user_check($check) {

            $columnName = array_keys($check);
            $value = array_values($check);
            $SELECT = "SELECT * FROM $this->tableName WHERE $columnName[0]='$value[0]'";
            
            return $this->execute($SELECT);
}

function insert_row($array) {

    
            $columnName = implode(",",array_keys($array));
            $values = "'".implode("','",(array_values($array)))."'";
            $INSERT = "INSERT INTO $this->tableNames ($columnName) VALUES ($values)";
            
            return $this->execute($INSERT);

}

function account_verify($array) {
            
            $columnName = array_keys($array);
            $values = array_values($array);
            $VERIFY = "SELECT * FROM $this->tableName WHERE ".$columnName[0] ." = '". $values[0] ."' && ".$columnName[1] ." = '". $values[1]."'"; 
            return $this->execute($VERIFY);  
            
}   

function execute($query) {

            $result=$this->conn->query($query);
            return ($result->num_rows>0);
}


function connection_close() {
    $this->conn->close();
}

} $USER = new LOGIN;

?>