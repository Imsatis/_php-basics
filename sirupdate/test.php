<?php




$array = array(
'studentId' => 1, 
'studentName' => 'Rahul'
);


$keys = array_keys($array);
$values = array_values($array);

$query = "update students set ";

for($i =0;  $i<sizeof($array); $i++){
	$query .= "'" . $keys[$i] . "' = " . "'" .$values[$i] . "', ";
	
}
$query = rtrim($query,', ');
$query .= "where $columnname = $columnvalue";
echo $query;




?>