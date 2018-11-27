<?php


include_once('function.php');

$obj->mb_connection_start();

$obj->mb_select_all_student();


if($results->num_rows>0){
	echo "<ul>";
	while($row = $results->fetch_assoc()){
		echo "<li><a href='read1.php?id={$row['studentId']}'>{$row['studentName']}</a></li>";
	}
	echo "</ul>";
}else{
	echo "No Record Find";
}

// ============================================
if(isset($_GET['id'])){
$id = $_GET['id'];


$obj->mb_select_student_by_id($id);


if($results->num_rows>0){
while($row = $results->fetch_assoc()){
		echo "<b>Student Name :</b>" . $row['studentName'] . "<br />";
		echo "<b>Student Email :</b>" . $row['studentEmail'] . "<br />";
		echo "<b>Student Age :</b>" . $row['studentAge'] . "<br />";
	}
}
}



$obj->mb_connection_stop();
?>