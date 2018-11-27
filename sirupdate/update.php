<?php
// Connection with Server
include('function.php');

$obj->mb_connection_start();


if(isset($_GET['id'])){

$id = $_GET['id'];

$values = array(
'studentId' => $id
);

$results = $obj->mb_select_query_by_id('students', $values);

print_r($results); 


if($results->num_rows>0){
while($row = $results->fetch_assoc()){

echo "<form action='update.php?edit={$row['studentId']}' method='post'>
<label> Student Name</label>
<input type='text' name='dname' value='{$row['studentName']}' />
<br />
<input type='submit' name='submit' value='Update' />
</form>";
}

}else{
	echo "No record found";
}
}
// =================================

if(isset($_GET['edit']) && isset($_POST['dname']) ){
$id = $_GET['edit'];
$name = $_POST['dname'];

$values = array(
'studentName' => $name
);

$results = $obj->mb_update_query('students', $values, 'studentId', $id);

//$results = $conn->query("update students set studentName='$name' where studentId = $id");
}

// ===================================== //
$results = $obj->mb_select_all_student('students');
// $results = $conn->query("Select * from students order by studentId desc limit 5");

if($results->num_rows>0){
while($row = $results->fetch_assoc()){
echo "Student Name : " . $row['studentName'] . " <a href='update.php?id={$row['studentId']}'>Update</a> <br />";
}

}else{
	echo "No record found";
}
// ======================================= //


$obj->mb_connection_stop();

?>

