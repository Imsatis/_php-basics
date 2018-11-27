<?php
// Connection with Server

class MB{
	
private $conn;
private $results;

function mb_connection_start(){

$this->conn = new mysqli('localhost', 'root', '', 'library');

if($this->conn->connect_error){
echo "Server Connection failed";
}
}

function mb_insert_query($tablename, $value){

$array_keys_to_string =  implode(", ",array_keys($value));
$array_values_to_string = "'" . implode("', '",array_values($value)) . "'";

$query = $this->conn->query("insert into $tablename ($array_keys_to_string) values ($array_values_to_string)");

}
// Read value
function mb_select_query_by_id($tablename, $values){

$keys = array_keys($values);
$values = array_values($values);
	
	
	
$results = $this->conn->query("select * from $tablename where $keys[0] = $values[0]");

return $results;
}






// Update value
function mb_update_query($tablename, $values, $columnname, $columnvalue){



$keys = array_keys($values);
$values = array_values($values);

$query = "update students set ";

for($i =0;  $i<sizeof($values); $i++){
	$query .= "" . $keys[$i] . " = " . "'" .$values[$i] . "', ";
	
}
$query = rtrim($query,', ');
$query .= " where $columnname = $columnvalue";

echo $query;

$this->conn->query($query);



}






// Delete value
function mb_delete_query(){
}

function mb_select_all_student($tablename){
$results = $this->conn->query("select * from $tablename order by studentId desc limit 5");
return $results;
}

function mb_select_student_by_id($tablename, $id){


$this->results = $conn->query("select * from $tablename where studentId=$id");
}

function mb_connection_stop(){

$this->conn->close();
}
}

$obj = new MB; 
?>

